PROJECT := golang-boilerplate

.PHONY: default dep build run

default: build

dep:
	dep ensure
	bazel run //:gazelle

build:
	bazel build ${PROJECT}

run:
	bazel run ${PROJECT}
