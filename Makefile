PROJECT := golang-boilerplate

.PHONY: default dep build run buildifier

default: build

dep:
	dep ensure
	bazel run //:gazelle

build:
	bazel build ${PROJECT}

gazelle:
	bazel run //:gazelle

run:
	bazel run ${PROJECT}

buildifier:
	bazel run --direct_run //:buildifier
