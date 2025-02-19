package post

// CreateInput input for create a Post.
type CreateInput struct {
	Title    string
	Content  string
	AuthorID string
}

// UpdateInput input for update a Post.
type UpdateInput struct {
	Title   string
	Content string
}
