package resolver

import (
	"msoft/g1/gqlapi/internal/clients/auth"
	"msoft/g1/gqlapi/internal/clients/comment"
	"msoft/g1/gqlapi/internal/clients/post"

	"github.com/IBM/sarama"
)

// This file will not be regenerated automatically.
//
// It serves as dependency injection for your app, add any dependencies you require here.

// Resolver defines graph resolver.
type Resolver struct {
	postClient    *post.Client
	commentClient *comment.Client
	authClient    *auth.Client
	kafkaProd     sarama.SyncProducer
}

// New creates a new graphql resolver.
func New(postClient *post.Client,
	commentClient *comment.Client, authClient *auth.Client,
	kafkaProd sarama.SyncProducer) *Resolver {
	return &Resolver{
		postClient:    postClient,
		commentClient: commentClient,
		authClient:    authClient,
		kafkaProd:     kafkaProd,
	}
}
