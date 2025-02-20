package resolver

// This file will be automatically regenerated based on the schema, any resolver implementations
// will be copied through when generating and any unknown code will be moved to the end.
// Code generated by github.com/99designs/gqlgen version v0.17.66

import (
	"context"
	"msoft/g1/gqlapi/internal/clients/comment"
	"msoft/g1/gqlapi/internal/clients/post"
	"msoft/g1/gqlapi/internal/graph/generated"
	"msoft/g1/gqlapi/internal/graph/modelgen"
)

// PostCreate is the resolver for the postCreate field.
func (r *mutationResolver) PostCreate(ctx context.Context, input post.CreateInput) (*modelgen.PostCreatePayload, error) {
	input.AuthorID = "1" // TODO
	p, err := r.postClient.Create(&input)
	if err != nil {
		return &modelgen.PostCreatePayload{Error: &modelgen.Error{Message: err.Error()}}, nil
	}
	return &modelgen.PostCreatePayload{Post: p}, nil
}

// PostUpdate is the resolver for the postUpdate field.
func (r *mutationResolver) PostUpdate(ctx context.Context, id int, input post.UpdateInput) (*modelgen.PostUpdatePayload, error) {
	p, err := r.postClient.Update(id, &input)
	if err != nil {
		return &modelgen.PostUpdatePayload{Error: &modelgen.Error{Message: err.Error()}}, nil
	}
	return &modelgen.PostUpdatePayload{Post: p}, nil
}

// PostDelete is the resolver for the postDelete field.
func (r *mutationResolver) PostDelete(ctx context.Context, id int) (*modelgen.PostDeletePayload, error) {
	err := r.postClient.Delete(id)
	if err != nil {
		return &modelgen.PostDeletePayload{Error: &modelgen.Error{Message: err.Error()}}, nil
	}
	return &modelgen.PostDeletePayload{}, nil
}

// Comments is the resolver for the comments field.
func (r *postResolver) Comments(ctx context.Context, obj *post.Post) ([]*comment.Comment, error) {
	cms, err := r.commentClient.GetByPostID(obj.ID)
	if err != nil {
		return nil, err
	}
	return cms, nil
}

// Post is the resolver for the post field.
func (r *queryResolver) Post(ctx context.Context, id int) (*post.Post, error) {
	p, err := r.postClient.GetByID(id)
	if err != nil {
		return nil, err
	}
	return p, nil
}

// Posts is the resolver for the posts field.
func (r *queryResolver) Posts(ctx context.Context) ([]*post.Post, error) {
	ps, err := r.postClient.GetAll()
	if err != nil {
		return nil, err
	}
	return ps, nil
}

// Post returns generated.PostResolver implementation.
func (r *Resolver) Post() generated.PostResolver { return &postResolver{r} }

type postResolver struct{ *Resolver }
