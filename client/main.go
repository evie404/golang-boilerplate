package main

import (
	"fmt"
	"log"

	"github.com/rickypai/golang-boilerplate/common"
	pb "github.com/rickypai/golang-boilerplate/protobufs/helloworld"
	//  1.............................. 2....... 3.......
	"google.golang.org/grpc"
)

func main() {
	host := "127.0.0.1"
	address := fmt.Sprintf("%s:%v", host, common.Port)
	conn, err := grpc.Dial(address, grpc.WithInsecure())
	if err != nil {
		log.Fatalf("did not connect: %v", err)
	}
	defer conn.Close()
	pb.NewGreeterClient(conn)
}
