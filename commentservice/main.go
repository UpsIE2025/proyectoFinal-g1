package main

import (
	"fmt"
	"log/slog"
	"os"

	"github.com/IBM/sarama"
	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
)

func main() {
	godotenv.Load()
	kafkaAddr := fmt.Sprintf("%s:%s", os.Getenv("KAFKA_HOST"), os.Getenv("KAFKA_PORT"))

	config := sarama.NewConfig()
	config.Producer.Return.Successes = true
	config.Producer.RequiredAcks = sarama.WaitForAll
	config.Producer.Retry.Max = 5
	kafkaProd, err := sarama.NewSyncProducer([]string{kafkaAddr}, config)
	if err != nil {
		panic(err)
	}
	defer kafkaProd.Close()

	db, err := dbInit()
	if err != nil {
		slog.Error(err.Error())
		os.Exit(1)
	}

	commentRepo := newCommentRepository(db)
	commentController := newCommentController(commentRepo, kafkaProd)

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
