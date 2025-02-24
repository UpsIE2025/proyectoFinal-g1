package main

type newCommentEvent struct {
	CommentID int    `json:"id"`
	PostID    int    `json:"post_id"`
	AuthorID  string `json:"author_id"`
}
