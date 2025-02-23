package middlewares

import (
	"context"
	"encoding/json"
	"errors"
	"fmt"
	"msoft/g1/gqlapi/internal/clients/auth"
	"net/http"
	"os"
	"strings"
	"time"

	"github.com/gin-gonic/gin"
)

type ctxKey string

var userCtxKey ctxKey = "userCtxKey"

// Auth defines auth middleware
func Auth(c *gin.Context) {
	authHeader := c.Request.Header.Get("Authorization")
	token, err := extractBearerToken(authHeader)
	if err != nil || token == "" {
		c.AbortWithStatus(http.StatusUnauthorized)
		return
	}
	u, err := validateToken(token)
	if err != nil {
		c.AbortWithStatus(http.StatusUnauthorized)
		return
	}
	ctx := context.WithValue(c.Request.Context(), userCtxKey, u)
	c.Request = c.Request.WithContext(ctx)
}

// UserForContext gets the logged user using the request context.
func UserForContext(ctx context.Context) *auth.User {
	u, ok := ctx.Value(userCtxKey).(*auth.User)
	if u == nil || !ok {
		return nil
	}
	return u
}

func extractBearerToken(authHeader string) (string, error) {
	authHeaderParts := strings.Fields(authHeader)
	if len(authHeaderParts) != 2 || strings.ToLower(authHeaderParts[0]) != "bearer" {
		return "", errors.New("Authorization header format must be Bearer <token>")
	}
	return authHeaderParts[1], nil
}

// https://auth0.com/docs/secure/tokens/access-tokens#opaque-access-tokens
func validateToken(token string) (*auth.User, error) {
	client := http.Client{Timeout: 3 * time.Second}
	req, err := http.NewRequest("GET",
		fmt.Sprintf("https://%s/userinfo", os.Getenv("AUTH0_DOMAIN")), nil)
	if err != nil {
		return nil, err
	}
	req.Header.Add("Authorization", fmt.Sprintf("Bearer %s", token))
	resp, err := client.Do(req)
	if err != nil {
		return nil, err
	}
	defer resp.Body.Close()
	if resp.StatusCode != http.StatusOK {
		return nil, errors.New("Unauthenticated")
	}
	var m map[string]interface{}
	err = json.NewDecoder(resp.Body).Decode(&m)
	if err != nil {
		return nil, err
	}
	email := "noemail@email.com"
	if m["email"] != nil {
		email = fmt.Sprint(m["email"])
	}
	return &auth.User{
		ID:    fmt.Sprint(m["sub"]),
		Name:  fmt.Sprint(m["name"]),
		Email: email,
	}, nil
}
