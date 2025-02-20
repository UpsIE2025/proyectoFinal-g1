package comment

import (
	"bytes"
	"encoding/json"
	"errors"
	"fmt"
	"net/http"
	"time"
)

// Client defines Comment service client.
type Client struct {
	baseURL string
	hc      *http.Client
}

// NewClient creates a new Comment service client.
func NewClient(addr string) (*Client, error) {
	return &Client{
		baseURL: fmt.Sprintf("http://%s", addr),
		hc:      &http.Client{Timeout: 5 * time.Second},
	}, nil
}

// Create creates a new comment.
func (c *Client) Create(input *CreateInput) (*Comment, error) {
	bodyBytes, _ := json.Marshal(input)
	req, _ := http.NewRequest(http.MethodPost, fmt.Sprintf("%s/", c.baseURL), bytes.NewBuffer(bodyBytes))
	cm, err := performAPICall[Comment](c.hc, req)
	if err != nil {
		return nil, err
	}
	return cm, nil
}

// GetAll gets all the comments.
func (c *Client) GetAll() ([]*Comment, error) {
	req, _ := http.NewRequest(http.MethodGet, fmt.Sprintf("%s/", c.baseURL), nil)
	cms, err := performAPICall[[]*Comment](c.hc, req)
	if err != nil {
		return nil, err
	}
	return *cms, nil
}

// GetByID get the comment with the specified id.
func (c *Client) GetByID(id int) (*Comment, error) {
	req, _ := http.NewRequest(http.MethodGet, fmt.Sprintf("%s/%d", c.baseURL, id), nil)
	cm, err := performAPICall[Comment](c.hc, req)
	if err != nil {
		return nil, err
	}
	return cm, nil
}

// GetByPostID gets the comments associated with a post.
func (c *Client) GetByPostID(postID int) ([]*Comment, error) {
	req, _ := http.NewRequest(http.MethodGet, fmt.Sprintf("%s/?post_id=%d", c.baseURL, postID), nil)
	cms, err := performAPICall[[]*Comment](c.hc, req)
	if err != nil {
		return nil, err
	}
	return *cms, nil
}

// Update updates the comment with the specified id.
func (c *Client) Update(id int, input *UpdateInput) (*Comment, error) {
	bodyBytes, _ := json.Marshal(input)
	req, _ := http.NewRequest(http.MethodPatch, fmt.Sprintf("%s/%d", c.baseURL, id), bytes.NewBuffer(bodyBytes))
	cm, err := performAPICall[Comment](c.hc, req)
	if err != nil {
		return nil, err
	}
	return cm, nil
}

// Delete deletes the comment with the specified id.
func (c *Client) Delete(id int) error {
	req, _ := http.NewRequest(http.MethodDelete, fmt.Sprintf("%s/%d", c.baseURL, id), nil)
	_, err := performAPICall[any](c.hc, req)
	return err
}

// ===============================================================
// Privates
// ===============================================================

func performAPICall[T any](client *http.Client, req *http.Request) (*T, error) {
	req.Header.Add("Content-Type", "application/json")
	res, err := client.Do(req)
	if err != nil {
		return nil, err
	}
	defer res.Body.Close()
	if res.StatusCode == http.StatusNotFound {
		return nil, nil
	}
	if res.StatusCode != http.StatusOK {
		var errResp struct {
			Message string `json:"message"`
		}
		_ = json.NewDecoder(res.Body).Decode(&errResp)
		return nil, errors.New(errResp.Message)
	}
	if req.Method == http.MethodDelete {
		return nil, nil
	}
	var v T
	err = json.NewDecoder(res.Body).Decode(&v)
	if err != nil {
		return nil, err
	}
	return &v, nil
}
