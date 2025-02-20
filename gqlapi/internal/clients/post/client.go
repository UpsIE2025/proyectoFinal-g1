package post

import (
	"context"
	"msoft/g1/postpb"
	"time"

	"google.golang.org/grpc"
	"google.golang.org/grpc/credentials/insecure"
	"google.golang.org/protobuf/types/known/emptypb"
)

// Client defines Post service client.
type Client struct {
	gc postpb.PostGRPCClient
}

// NewClient creates a new Post service client.
func NewClient(addr string) (*Client, func() error, error) {
	conn, err := grpc.NewClient(addr, grpc.WithTransportCredentials(insecure.NewCredentials()))
	if err != nil {
		return nil, nil, err
	}
	return &Client{
		gc: postpb.NewPostGRPCClient(conn),
	}, conn.Close, nil
}

// Create creates a new post.
func (c *Client) Create(input *CreateInput) (*Post, error) {
	ctx := context.Background()
	resp, err := c.gc.CreatePost(ctx, &postpb.CreatePostRequest{
		Title:    input.Title,
		Content:  input.Content,
		AuthorId: input.AuthorID,
	})
	if err != nil {
		return nil, err
	}
	return convertRPCModel(resp.Post), nil
}

// GetAll get all posts.
func (c *Client) GetAll() ([]*Post, error) {
	ctx := context.Background()
	resp, err := c.gc.GetAllPosts(ctx, &emptypb.Empty{})
	if err != nil {
		return nil, err
	}
	ret := make([]*Post, 0, len(resp.Posts))
	for _, rp := range resp.Posts {
		ret = append(ret, convertRPCModel(rp))
	}
	return ret, nil
}

// GetByID gets the post with the specified id.
func (c *Client) GetByID(id int) (*Post, error) {
	ctx := context.Background()
	resp, err := c.gc.GetPost(ctx, &postpb.GetPostRequest{Id: int64(id)})
	if err != nil {
		return nil, err
	}
	return convertRPCModel(resp.Post), nil
}

// Update updates the post with the specified id.
func (c *Client) Update(id int, input *UpdateInput) (*Post, error) {
	ctx := context.Background()
	resp, err := c.gc.UpdatePost(ctx, &postpb.UpdatePostRequest{
		Id:      int64(id),
		Title:   input.Title,
		Content: input.Content,
	})
	if err != nil {
		return nil, err
	}
	return convertRPCModel(resp.Post), nil
}

// Delete deletes the post with the specified id.
func (c *Client) Delete(id int) error {
	ctx := context.Background()
	_, err := c.gc.DeletePost(ctx, &postpb.DeletePostRequest{Id: int64(id)})
	return err
}

// ===============================================================
// Privates
// ===============================================================

func convertRPCModel(rp *postpb.Post) *Post {
	if rp == nil {
		return nil
	}
	createdAt, _ := time.Parse(time.RFC3339Nano, rp.CreatedAt)
	updatedAt, _ := time.Parse(time.RFC3339Nano, rp.UpdatedAt)
	return &Post{
		ID:        int(rp.Id),
		CreatedAt: createdAt,
		UpdatedAt: updatedAt,
		Title:     rp.Title,
		Content:   rp.Content,
		AuthorID:  rp.AuthorId,
	}
}
