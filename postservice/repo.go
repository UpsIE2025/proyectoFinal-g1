package main

import (
	"context"
	"errors"

	"gorm.io/gorm"
	"gorm.io/gorm/clause"
)

// postRepository defines repository implementation for Posts.
type postRepository struct {
	db *gorm.DB
}

func newPostRepository(db *gorm.DB) Repository {
	return &postRepository{db: db}
}

func (r *postRepository) Create(ctx context.Context, p *Post) (*Post, error) {
	err := r.db.WithContext(ctx).Create(p).Error
	if err != nil {
		return nil, err
	}
	return p, nil
}

func (r *postRepository) GetAll(ctx context.Context) ([]*Post, error) {
	var posts []*Post
	err := r.db.WithContext(ctx).Find(&posts).Error
	if err != nil {
		return nil, err
	}
	return posts, nil
}

func (r *postRepository) GetByID(ctx context.Context, id int) (*Post, error) {
	ret := Post{}
	err := r.db.First(&ret, id).Error
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			return nil, nil
		}
		return nil, err
	}
	return &ret, nil
}

func (r *postRepository) Update(ctx context.Context, id int, p *Post) (*Post, error) {
	ret := Post{}
	p.ID = id
	result := r.db.WithContext(ctx).Model(&ret).Clauses(clause.Returning{}).Where("id = ?", id).Updates(p)
	if result.RowsAffected == 0 {
		return nil, nil
	}
	if result.Error != nil {
		return nil, result.Error
	}
	return &ret, nil
}

func (r *postRepository) Delete(ctx context.Context, id int) error {
	return r.db.WithContext(ctx).Delete(&Post{ID: id}).Error
}
