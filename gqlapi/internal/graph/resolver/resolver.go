package resolver

import (
	"msoft/g1/gqlapi/internal/clients/comment"
	"msoft/g1/gqlapi/internal/clients/post"
)

// This file will not be regenerated automatically.
//
// It serves as dependency injection for your app, add any dependencies you require here.

// Resolver defines graph resolver.
type Resolver struct {
	postClient    *post.Client
	commentClient *comment.Client
}

// New creates a new graphql resolver.
func New(postClient *post.Client, commentClient *comment.Client) *Resolver {
	return &Resolver{
		postClient:    postClient,
		commentClient: commentClient,
	}
}
