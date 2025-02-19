package comment

import "time"

// Comment defines comment model.
type Comment struct {
	ID        int       `json:"id"`
	CreatedAt time.Time `json:"created_at,omitempty"`
	UpdatedAt time.Time `json:"updated_at,omitempty"`
	Content   string    `json:"content,omitempty"`
	PostID    int       `json:"post_id,omitempty"`
	AuthorID  string    `json:"author_id,omitempty"`
}
