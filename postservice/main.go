package main

import (
	"fmt"
	"log/slog"
	"msoft/g1/postpb"
	"net"
	"os"

	"github.com/joho/godotenv"
	"google.golang.org/grpc"
)

func main() {
	godotenv.Load()

	db, err := dbInit()
	if err != nil {
		slog.Error(err.Error())
		os.Exit(1)
	}
	postRepo := newPostRepository(db)
	rpcServer := postRPCServer{repo: postRepo}

	s := grpc.NewServer()
	postpb.RegisterPostGRPCServer(s, &rpcServer)

	lis, err := net.Listen("tcp", fmt.Sprintf(":%s", getServicePort()))
	if err != nil {
		slog.Error(err.Error())
		os.Exit(1)
	}
	slog.Info(fmt.Sprintf("GRPC server listening at %v", lis.Addr()))
	if err := s.Serve(lis); err != nil {
		slog.Error(err.Error())
	}
}

func getServicePort() string {
	port := os.Getenv("PORT")
	if port == "" {
		port = "8080"
	}
	return port
}
