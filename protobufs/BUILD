package(default_visibility = ["//visibility:public"])

load("@org_pubref_rules_protobuf//go:rules.bzl", "go_proto_library")

go_proto_library(
  name = "helloworld",
  protos = ["helloworld.proto"],
  with_grpc = True,
  importpath = "github.com/rickypai/golang-boilerplate/protobufs/helloworld"
)
