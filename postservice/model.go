package main

import (
	"context"
	"time"
)

// Post defines post model.
type Post struct {
	ID        int       `json:"id" gorm:"unique;primaryKey;autoIncrement"`
	CreatedAt time.Time `json:"created_at,omitempty"`
	UpdatedAt time.Time `json:"updated_at,omitempty"`
	Title     string    `json:"title,omitempty"`
	Content   string    `json:"content,omitempty"`
	AuthorID  string    `json:"author_id,omitempty"`
}

// Repository defines Post repository interface.
type Repository interface {
	Create(ctx context.Context, p *Post) (*Post, error)
	GetAll(ctx context.Context) ([]*Post, error)
	GetByID(ctx context.Context, id int) (*Post, error)
	Update(ctx context.Context, id int, p *Post) (*Post, error)
	Delete(ctx context.Context, id int) error
}
