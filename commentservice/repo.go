package main

import (
	"context"
	"errors"

	"gorm.io/gorm"
)

// commentRepository defines repository implementation for Comments.
type commentRepository struct {
	db *gorm.DB
}

func newCommentRepository(db *gorm.DB) Repository {
	return &commentRepository{db: db}
}

func (r *commentRepository) Create(ctx context.Context, c *Comment) (*Comment, error) {
	err := r.db.WithContext(ctx).Create(c).Error
	if err != nil {
		return nil, err
	}
	return c, nil
}

func (r *commentRepository) GetAll(ctx context.Context) ([]*Comment, error) {
	var comments []*Comment
	err := r.db.WithContext(ctx).Find(&comments).Error
	if err != nil {
		return nil, err
	}
	return comments, nil
}

func (r *commentRepository) GetByID(ctx context.Context, id int) (*Comment, error) {
	ret := Comment{}
	err := r.db.First(&ret, id).Error
	if err != nil {
		if errors.Is(err, gorm.ErrRecordNotFound) {
			return nil, nil
		}
		return nil, err
	}
	return &ret, nil
}

func (r *commentRepository) GetByPostID(ctx context.Context, postID int) ([]*Comment, error) {
	var comments []*Comment
	err := r.db.WithContext(ctx).Where("post_id = ?", postID).Find(&comments).Error
	if err != nil {
		return nil, err
	}
	return comments, nil
}

func (r *commentRepository) Update(ctx context.Context, id int, c *Comment) (*Comment, error) {
	ret := Comment{}
	c.ID = id
	result := r.db.WithContext(ctx).Model(&ret).Where("id = ?", id).Updates(c)
	if result.Error != nil {
		return nil, result.Error
	}
	if result.RowsAffected == 0 {
		return nil, nil
	}
	err := r.db.First(&ret, id).Error
	if err != nil {
		return nil, err
	}
	return &ret, nil
}

func (r *commentRepository) Delete(ctx context.Context, id int) error {
	return r.db.WithContext(ctx).Delete(&Comment{ID: id}).Error
}
