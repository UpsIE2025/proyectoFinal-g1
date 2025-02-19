package post

// Client defines Post service client.
type Client struct{}

// NewClient creates a new Post service client.
func NewClient() (*Client, error) {
	return &Client{}, nil
}
