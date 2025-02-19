package comment

// CreateInput input for create a Comment.
type CreateInput struct {
	Content  string
	PostID   int
	AuthorID string
}

// UpdateInput input for update a Comment.
type UpdateInput struct {
	Content string
}
