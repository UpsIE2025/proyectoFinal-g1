package comment

// Client defines Comment service client.
type Client struct{}

// NewClient creates a new Comment service client.
func NewClient() (*Client, error) {
	return &Client{}, nil
}
