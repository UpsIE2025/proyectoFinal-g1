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
	"github.com/vektah/gqlparser/v2/ast"
)

func main() {

	postClient, err := post.NewClient()
	if err != nil {
		slog.Error(err.Error())
		os.Exit(1)
	}
	commentClient, err := comment.NewClient("http://localhost:80")
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

	port := os.Getenv("PORT")
	slog.Info(fmt.Sprintf("Listening at :%s", port))
	if err := http.ListenAndServe(":"+port, mux); err != nil {
		slog.Error(err.Error())
	}
}
