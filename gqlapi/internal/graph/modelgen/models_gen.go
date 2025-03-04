// Code generated by github.com/99designs/gqlgen, DO NOT EDIT.

package modelgen

import (
	"msoft/g1/gqlapi/internal/clients/comment"
	"msoft/g1/gqlapi/internal/clients/post"
)

// AuthorInfo model definition
type AuthorInfo struct {
	Name       string `json:"name"`
	PictureURL string `json:"pictureUrl"`
}

type CommentCreatePayload struct {
	Comment *comment.Comment `json:"comment,omitempty"`
	Error   *Error           `json:"error,omitempty"`
}

type CommentDeletePayload struct {
	Error *Error `json:"error,omitempty"`
}

type CommentUpdatePayload struct {
	Comment *comment.Comment `json:"comment,omitempty"`
	Error   *Error           `json:"error,omitempty"`
}

type Error struct {
	Message string `json:"message"`
}

type FCMTokenAddOrRemovePayload struct {
	Error *Error `json:"error,omitempty"`
}

// Mutation operations
type Mutation struct {
}

type PostCreatePayload struct {
	Post  *post.Post `json:"post,omitempty"`
	Error *Error     `json:"error,omitempty"`
}

type PostDeletePayload struct {
	Error *Error `json:"error,omitempty"`
}

type PostUpdatePayload struct {
	Post  *post.Post `json:"post,omitempty"`
	Error *Error     `json:"error,omitempty"`
}

// Query operations
type Query struct {
}
