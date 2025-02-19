genpb:
	protoc --go_out=. --go_opt=paths=source_relative --go-grpc_out=. --go-grpc_opt=paths=source_relative ./postpb/post.proto

gengql:
	go run github.com/99designs/gqlgen generate