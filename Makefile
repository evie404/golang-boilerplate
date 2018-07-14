PROJECT := golang-boilerplate

.PHONY: default build run buildifier

default: build

build:
	bazel build ${PROJECT}

gazelle:
	bazel run //:gazelle

run:
	bazel run ${PROJECT}

buildifier:
	bazel run --direct_run //:buildifier
