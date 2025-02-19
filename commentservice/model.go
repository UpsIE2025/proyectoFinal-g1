package main

import (
	"context"
	"time"
)

// Comment defines comment model.
type Comment struct {
	ID        int       `json:"id" gorm:"unique;primaryKey;autoIncrement"`
	CreatedAt time.Time `json:"created_at,omitempty"`
	UpdatedAt time.Time `json:"updated_at,omitempty"`
	Content   string    `json:"content,omitempty"`
	PostID    string    `json:"post_id,omitempty"`
	AuthorID  string    `json:"author_id,omitempty"`
}

// Repository defines Comment repository interface.
type Repository interface {
	Create(ctx context.Context, c *Comment) (*Comment, error)
	GetAll(ctx context.Context) ([]*Comment, error)
	GetByID(ctx context.Context, id int) (*Comment, error)
	Update(ctx context.Context, id int, c *Comment) (*Comment, error)
	Delete(ctx context.Context, id int) error
}
