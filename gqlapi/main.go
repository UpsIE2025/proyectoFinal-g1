package main

import (
	"fmt"
	"log/slog"
	"msoft/g1/gqlapi/internal/clients/auth"
	"msoft/g1/gqlapi/internal/clients/comment"
	"msoft/g1/gqlapi/internal/clients/post"
	"msoft/g1/gqlapi/internal/graph/generated"
	"msoft/g1/gqlapi/internal/graph/resolver"
	"msoft/g1/gqlapi/internal/middlewares"
	"os"

	"github.com/99designs/gqlgen/graphql/handler"
	"github.com/99designs/gqlgen/graphql/handler/extension"
	"github.com/99designs/gqlgen/graphql/handler/lru"
	"github.com/99designs/gqlgen/graphql/handler/transport"
	"github.com/99designs/gqlgen/graphql/playground"
	"github.com/IBM/sarama"
	"github.com/gin-gonic/gin"
	"github.com/joho/godotenv"
	"github.com/vektah/gqlparser/v2/ast"
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

	authClient, err := auth.NewClient()
	if err != nil {
		slog.Error(err.Error())
		os.Exit(1)
	}

	postClient, postClientClose, err := post.NewClient(fmt.Sprintf("%s:%s",
		os.Getenv("POST_SERVICE_HOST"), os.Getenv("POST_SERVICE_PORT")))
	if err != nil {
		slog.Error(err.Error())
		os.Exit(1)
	}
	defer postClientClose()

	commentClient, err := comment.NewClient(fmt.Sprintf("%s:%s",
		os.Getenv("COMMENT_SERVICE_HOST"), os.Getenv("COMMENT_SERVICE_PORT")))
	if err != nil {
		slog.Error(err.Error())
		os.Exit(1)
	}

	srv := handler.New(generated.NewExecutableSchema(generated.Config{
		Resolvers: resolver.New(postClient, commentClient, authClient, kafkaProd),
	}))
	srv.AddTransport(transport.Options{})
	srv.AddTransport(transport.GET{})
	srv.AddTransport(transport.POST{})
	srv.SetQueryCache(lru.New[*ast.QueryDocument](1000))
	srv.Use(extension.Introspection{})

	r := gin.Default()
	r.GET("/playground", func(ctx *gin.Context) {
		playground.Handler("GraphQL playground", "/query")(ctx.Writer, ctx.Request)
	})
	r.POST("/query", middlewares.Auth, func(ctx *gin.Context) {
		srv.ServeHTTP(ctx.Writer, ctx.Request)
	})

	port := getAPIPort()
	slog.Info(fmt.Sprintf("Listening at :%s", port))
	r.Run(":" + port)
}

func getAPIPort() string {
	port := os.Getenv("API_PORT")
	if port == "" {
		port = "8080"
	}
	return port
}
