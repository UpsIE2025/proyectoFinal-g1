package main

import (
	"fmt"
	"log/slog"
	"msoft/g1/postpb"
	"net"
	"os"

	"google.golang.org/grpc"
)

func main() {
	db, err := dbInit()
	if err != nil {
		slog.Error(err.Error())
		os.Exit(1)
	}
	postRepo := newPostRepository(db)
	rpcServer := postRPCServer{repo: postRepo}

	s := grpc.NewServer()
	postpb.RegisterPostGRPCServer(s, &rpcServer)

	port := "8091"
	lis, err := net.Listen("tcp", fmt.Sprintf(":%s", port))
	if err != nil {
		slog.Error(err.Error())
		os.Exit(1)
	}
	slog.Info(fmt.Sprintf("GRPC server listening at %v", lis.Addr()))
	if err := s.Serve(lis); err != nil {
		slog.Error(err.Error())
	}
}
