package auth

// User defines User model.
type User struct {
	ID         string `json:"id"`
	Name       string `json:"name"`
	Email      string `json:"email"`
	PictureURL string `json:"picture_url"`
}
