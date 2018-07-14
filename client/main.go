package main

import (
	"log"

	pb "github.com/rickypai/golang-boilerplate/protobufs/helloworld"
	//  1.............................. 2....... 3.......
	"google.golang.org/grpc"
)

func main() {
	address := "127.0.0.1:8080"
	conn, err := grpc.Dial(address, grpc.WithInsecure())
	if err != nil {
		log.Fatalf("did not connect: %v", err)
	}
	defer conn.Close()
	pb.NewGreeterClient(conn)
}
