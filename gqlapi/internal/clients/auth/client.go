package auth

import (
	"context"
	"os"

	"github.com/auth0/go-auth0/management"
)

// Client defines Auth Client
type Client struct {
	api *management.Management
}

// NewClient creates a new auth client.
func NewClient() (*Client, error) {
	api, err := management.New(
		os.Getenv("AUTH0_DOMAIN"),
		management.WithClientCredentials(context.Background(),
			os.Getenv("AUTH0_CLIENT_ID"),
			os.Getenv("AUHT0_CLIENT_SECRET"),
		),
	)
	if err != nil {
		return nil, err
	}
	return &Client{api: api}, nil
}

// GetUser gets the user with the specified id.
func (c *Client) GetUser(id string) (*User, error) {
	resp, err := c.api.User.Read(context.Background(), id)
	if err != nil {
		return nil, err
	}
	var u User
	if resp.ID != nil {
		u.ID = *resp.ID
	}
	if resp.Name != nil {
		u.Name = *resp.Name
	}
	if resp.Email != nil {
		u.Email = *resp.Email
	}
	return &u, nil
}
