package main

import (
	"context"
	"msoft/g1/postpb"
	"time"

	"google.golang.org/protobuf/types/known/emptypb"
)

type postRPCServer struct {
	postpb.UnimplementedPostGRPCServer
	repo Repository
}

func (s *postRPCServer) CreatePost(ctx context.Context, req *postpb.CreatePostRequest) (*postpb.PostResponse, error) {
	p, err := s.repo.Create(ctx, &Post{
		Title:    req.Title,
		Content:  req.Content,
		AuthorID: req.AuthorId,
	})
	if err != nil {
		return nil, err
	}
	return &postpb.PostResponse{Post: &postpb.Post{
		Id:        int64(p.ID),
		CreatedAt: p.CreatedAt.Format(time.RFC3339Nano),
		UpdatedAt: p.UpdatedAt.Format(time.RFC3339Nano),
		Title:     p.Title,
		Content:   p.Content,
		AuthorId:  p.AuthorID,
	}}, nil
}

func (s *postRPCServer) GetAllPosts(ctx context.Context, req *emptypb.Empty) (*postpb.PostsResponse, error) {
	posts, err := s.repo.GetAll(ctx)
	if err != nil {
		return nil, err
	}
	ret := make([]*postpb.Post, 0, len(posts))
	for _, p := range posts {
		ret = append(ret, &postpb.Post{
			Id:        int64(p.ID),
			CreatedAt: p.CreatedAt.Format(time.RFC3339Nano),
			UpdatedAt: p.UpdatedAt.Format(time.RFC3339Nano),
			Title:     p.Title,
			Content:   p.Content,
			AuthorId:  p.AuthorID,
		})
	}
	return &postpb.PostsResponse{Posts: ret}, nil
}

func (s *postRPCServer) GetPost(ctx context.Context, req *postpb.GetPostRequest) (*postpb.PostResponse, error) {
	p, err := s.repo.GetByID(ctx, int(req.Id))
	if err != nil {
		return nil, err
	}
	if p == nil {
		return nil, nil
	}
	return &postpb.PostResponse{Post: &postpb.Post{
		Id:        int64(p.ID),
		CreatedAt: p.CreatedAt.Format(time.RFC3339Nano),
		UpdatedAt: p.UpdatedAt.Format(time.RFC3339Nano),
		Title:     p.Title,
		Content:   p.Content,
		AuthorId:  p.AuthorID,
	}}, nil
}

func (s *postRPCServer) UpdatePost(ctx context.Context, req *postpb.UpdatePostRequest) (*postpb.PostResponse, error) {
	p, err := s.repo.Update(ctx, int(req.Id), &Post{
		Title:   req.Title,
		Content: req.Content,
	})
	if err != nil {
		return nil, err
	}
	return &postpb.PostResponse{Post: &postpb.Post{
		Id:        int64(p.ID),
		CreatedAt: p.CreatedAt.Format(time.RFC3339Nano),
		UpdatedAt: p.UpdatedAt.Format(time.RFC3339Nano),
		Title:     p.Title,
		Content:   p.Content,
		AuthorId:  p.AuthorID,
	}}, nil
}

func (s *postRPCServer) DeletePost(ctx context.Context, req *postpb.DeletePostRequest) (*emptypb.Empty, error) {
	err := s.repo.Delete(ctx, int(req.Id))
	if err != nil {
		return nil, err
	}
	return &emptypb.Empty{}, nil
}
