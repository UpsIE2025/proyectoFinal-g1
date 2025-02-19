package main

import (
	"log/slog"
	"os"

	"github.com/gin-gonic/gin"
)

func main() {
	db, err := dbInit()
	if err != nil {
		slog.Error(err.Error())
		os.Exit(1)
	}

	commentRepo := newCommentRepository(db)
	commentController := newCommentController(commentRepo)

	r := gin.Default()
	commentController.AttachRouter(r)
	r.Run(":80")
}
