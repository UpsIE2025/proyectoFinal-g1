package main

import (
	"fmt"
	"log/slog"
	"msoft/g1/gqlapi/internal/clients/comment"
	"msoft/g1/gqlapi/internal/clients/post"
	"msoft/g1/gqlapi/internal/graph/generated"
	"msoft/g1/gqlapi/internal/graph/resolver"
	"net/http"
	"os"

	"github.com/99designs/gqlgen/graphql/handler"
	"github.com/99designs/gqlgen/graphql/handler/extension"
	"github.com/99designs/gqlgen/graphql/handler/lru"
	"github.com/99designs/gqlgen/graphql/handler/transport"
	"github.com/99designs/gqlgen/graphql/playground"
	"github.com/joho/godotenv"
	"github.com/vektah/gqlparser/v2/ast"
)

func main() {
	godotenv.Load()

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
		Resolvers: resolver.New(postClient, commentClient),
	}))
	srv.AddTransport(transport.Options{})
	srv.AddTransport(transport.GET{})
	srv.AddTransport(transport.POST{})
	srv.SetQueryCache(lru.New[*ast.QueryDocument](1000))
	srv.Use(extension.Introspection{})

	mux := http.NewServeMux()
	mux.Handle("/playground", playground.Handler("GraphQL playground", "/query"))
	mux.Handle("/query", srv)

	port := getAPIPort()
	slog.Info(fmt.Sprintf("Listening at :%s", port))
	if err := http.ListenAndServe(":"+port, mux); err != nil {
		slog.Error(err.Error())
	}
}

func getAPIPort() string {
	port := os.Getenv("API_PORT")
	if port == "" {
		port = "8080"
	}
	return port
}
