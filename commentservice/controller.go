package main

import (
	"encoding/json"
	"log/slog"
	"net/http"
	"strconv"

	"github.com/IBM/sarama"
	"github.com/gin-gonic/gin"
)

type commentController struct {
	repo      Repository
	kafkaProd sarama.SyncProducer
}

func newCommentController(repo Repository, kafkaProd sarama.SyncProducer) *commentController {
	return &commentController{repo: repo, kafkaProd: kafkaProd}
}

func (c *commentController) AttachRouter(r *gin.Engine) {
	r.POST("/", c.createComment)
	r.GET("/", c.getAllComments)
	r.GET("/:id", c.getComment)
	r.PATCH("/:id", c.updateComment)
	r.DELETE("/:id", c.deleteComment)

	r.GET("/count", c.countByPostID)
}

func (c *commentController) createComment(ctx *gin.Context) {
	input := CreateInput{}
	if err := ctx.ShouldBindJSON(&input); err != nil {
		ctx.AbortWithStatusJSON(http.StatusBadRequest, gin.H{"message": ErrInvalidRequest.Error()})
		return
	}
	cm, err := c.repo.Create(ctx, &Comment{
		Content:  input.Content,
		PostID:   input.PostID,
		AuthorID: input.AuthorID,
	})
	if err != nil {
		slog.Error(err.Error())
		ctx.AbortWithStatusJSON(http.StatusInternalServerError, gin.H{"message": ErrDatabase.Error()})
		return
	}
	go func(newComment Comment) {
		slog.Info("Sending newComment event")
		data, _ := json.Marshal(newComment)
		_, _, err := c.kafkaProd.SendMessage(&sarama.ProducerMessage{
			Topic: "newComment",
			Value: sarama.ByteEncoder(data),
		})
		if err != nil {
			slog.Error(err.Error())
		}
	}(*cm)
	ctx.JSON(http.StatusOK, cm)
}

func (c *commentController) getAllComments(ctx *gin.Context) {
	var cms []*Comment
	postID := ctx.Query("post_id")
	postIDInt, err := strconv.Atoi(postID)
	if postID != "" && err == nil {
		cms, err = c.repo.GetByPostID(ctx, postIDInt)
	} else {
		cms, err = c.repo.GetAll(ctx)
	}
	if err != nil {
		slog.Error(err.Error())
		ctx.AbortWithStatusJSON(http.StatusInternalServerError, gin.H{"message": ErrDatabase.Error()})
		return
	}
	ctx.JSON(http.StatusOK, cms)
}

func (c *commentController) getComment(ctx *gin.Context) {
	id, err := strconv.Atoi(ctx.Param("id"))
	if err != nil {
		ctx.AbortWithStatusJSON(http.StatusBadRequest, gin.H{"message": ErrInvalidRequest.Error()})
		return
	}
	cm, err := c.repo.GetByID(ctx, id)
	if err != nil {
		slog.Error(err.Error())
		ctx.AbortWithStatusJSON(http.StatusInternalServerError, gin.H{"message": ErrDatabase.Error()})
		return
	}
	if cm == nil {
		ctx.Status(http.StatusNotFound)
		return
	}
	ctx.JSON(http.StatusOK, cm)
}

func (c *commentController) countByPostID(ctx *gin.Context) {
	postID := ctx.Query("post_id")
	postIDInt, err := strconv.Atoi(postID)
	if err != nil {
		slog.Error(err.Error())
		ctx.AbortWithStatusJSON(http.StatusBadRequest, gin.H{"message": "ID de post inválido"})
		return
	}
	count, err := c.repo.CountByPostID(ctx, postIDInt)
	if err != nil {
		slog.Error(err.Error())
		ctx.AbortWithStatusJSON(http.StatusInternalServerError, gin.H{"message": ErrDatabase.Error()})
		return
	}
	ctx.JSON(http.StatusOK, gin.H{"count": count})
}

func (c *commentController) updateComment(ctx *gin.Context) {
	id, err := strconv.Atoi(ctx.Param("id"))
	if err != nil {
		ctx.AbortWithStatusJSON(http.StatusBadRequest, gin.H{"message": ErrInvalidRequest.Error()})
		return
	}
	input := UpdateInput{}
	if err := ctx.ShouldBindJSON(&input); err != nil {
		ctx.AbortWithStatusJSON(http.StatusBadRequest, gin.H{"message": ErrInvalidRequest.Error()})
		return
	}
	cm, err := c.repo.Update(ctx, id, &Comment{
		Content: input.Content,
	})
	if err != nil {
		slog.Error(err.Error())
		ctx.AbortWithStatusJSON(http.StatusInternalServerError, gin.H{"message": ErrDatabase.Error()})
		return
	}
	ctx.JSON(http.StatusOK, cm)
}

func (c *commentController) deleteComment(ctx *gin.Context) {
	id, err := strconv.Atoi(ctx.Param("id"))
	if err != nil {
		ctx.AbortWithStatusJSON(http.StatusBadRequest, gin.H{"message": ErrInvalidRequest.Error()})
		return
	}
	if err = c.repo.Delete(ctx, id); err != nil {
		slog.Error(err.Error())
		ctx.AbortWithStatusJSON(http.StatusInternalServerError, gin.H{"message": ErrDatabase.Error()})
		return
	}
	ctx.Status(http.StatusOK)
}
