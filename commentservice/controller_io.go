package main

// CreateInput input to create a comment.
type CreateInput struct {
	Content  string `json:"content,omitempty"`
	PostID   int    `json:"post_id,omitempty"`
	AuthorID string `json:"author_id,omitempty"`
}

// UpdateInput input to update a comment.
type UpdateInput struct {
	Content string `json:"content,omitempty"`
}
