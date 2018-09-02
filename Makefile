PROJECT := golang-boilerplate

.PHONY: default build buildifier

default: build

build:
	bazel build //...

server:
	bazel run //helloworld/server:server

client:
	bazel run //helloworld/client:client hi

gazelle:
	bazel run //:gazelle

goimports:
	bazel run //:goimports

buildifier:
	bazel run --direct_run //:buildifier
