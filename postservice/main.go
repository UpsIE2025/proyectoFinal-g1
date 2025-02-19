package main

import (
	"context"
	"fmt"
	"log/slog"
	"os"
)

func main() {
	db, err := dbInit()
	if err != nil {
		slog.Error(err.Error())
		os.Exit(1)
	}
	postRepo := newPostRepository(db)

	ctx := context.Background()

	fmt.Println(postRepo.GetAll(ctx))
}
