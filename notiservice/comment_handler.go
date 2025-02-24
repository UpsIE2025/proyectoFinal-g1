package main

import (
	"context"
	"encoding/json"
	"fmt"
	"log/slog"
	"msoft/g1/postpb"

	"firebase.google.com/go/v4/messaging"
	"github.com/IBM/sarama"
	"gorm.io/gorm"
)

type commentHandler struct {
	db         *gorm.DB
	postClient postpb.PostGRPCClient
	fcmClient  *messaging.Client
}

func newCommentHandler(db *gorm.DB, postClient postpb.PostGRPCClient, fcmClient *messaging.Client) (*commentHandler, error) {
	return &commentHandler{db: db, postClient: postClient, fcmClient: fcmClient}, nil
}

func (h *commentHandler) HandleMessage(msg *sarama.ConsumerMessage) {
	var ev newCommentEvent
	err := json.Unmarshal(msg.Value, &ev)
	if err != nil {
		slog.Error(err.Error())
		return
	}
	resp, err := h.postClient.GetPost(context.Background(), &postpb.GetPostRequest{Id: int64(ev.PostID)})
	if err != nil {
		slog.Error(err.Error())
		return
	}
	if resp.Post.AuthorId == ev.AuthorID {
		// do not send notification if it is the same user who is commenting
		return
	}
	var ftokens []*fcmToken
	err = h.db.Where("user_id = ?", resp.Post.AuthorId).Find(&ftokens).Error
	if err != nil {
		slog.Error(err.Error())
		return
	}
	tokens := make([]string, 0, len(ftokens))
	for _, tk := range ftokens {
		tokens = append(tokens, tk.Token)
	}
	slog.Info(fmt.Sprintf("Sending notification to user %s", resp.Post.AuthorId))
	invalidTokens := firebaseSendNotification(h.fcmClient, []*messaging.MulticastMessage{{
		Notification: &messaging.Notification{
			Title: "Nuevo comentario",
			Body:  "Su publicación ha recibido un nuevo comentario.",
		},
		Data: map[string]string{
			"postId":    fmt.Sprint(ev.PostID),
			"commentId": fmt.Sprint(ev.CommentID),
		},
		Tokens: tokens,
	}})
	if len(invalidTokens) > 0 {
		slog.Info("Deleting invalid tokens")
		err = h.db.Where("token IN ?", invalidTokens).Delete(&fcmToken{}).Error
		if err != nil {
			slog.Error(err.Error())
		}
	}
	slog.Info("Done")
}
