package comment

// CreateInput input for create a Comment.
type CreateInput struct {
	Content  string `json:"content,omitempty"`
	PostID   int    `json:"post_id,omitempty"`
	AuthorID string `json:"author_id,omitempty"`
}

// UpdateInput input for update a Comment.
type UpdateInput struct {
	Content string `json:"content,omitempty"`
}
