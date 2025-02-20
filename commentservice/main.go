package main

import (
	"fmt"
	"log/slog"
	"os"

	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
)

func main() {
	godotenv.Load()

	db, err := dbInit()
	if err != nil {
		slog.Error(err.Error())
		os.Exit(1)
	}

	commentRepo := newCommentRepository(db)
	commentController := newCommentController(commentRepo)

	r := gin.Default()
	commentController.AttachRouter(r)
	r.Run(fmt.Sprintf(":%s", getServicePort()))
}

func getServicePort() string {
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	return port
}
