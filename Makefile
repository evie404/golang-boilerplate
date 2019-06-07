.PHONY: default build buildifier

default: build

# builds all target
build:
	bazel build //...

# tests all target
test:
	bazel test //...

# hello world binary
hello:
	bazel run //helloworld:helloworld

# hello world gRPC server
# https://github.com/grpc/grpc-go/tree/master/examples/helloworld
server:
	bazel run //grpc/server:server

# hello world gRPC client
# https://github.com/grpc/grpc-go/tree/master/examples/helloworld
client:
	bazel run //grpc/client:client -- hi

# gazelle: automatic generation of Bazel build files
# https://github.com/bazelbuild/bazel-gazelle
gazelle:
	bazel run //:gazelle

# goimports: gofmt + import management in src
# https://godoc.org/golang.org/x/tools/cmd/goimports
goimports:
	bazel run //:goimports

# buildifier: Bazel build file formatter
# https://github.com/bazelbuild/buildtools/tree/master/buildifier
buildifier:
	bazel run --direct_run //:buildifier
