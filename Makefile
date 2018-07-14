PROJECT := golang-boilerplate

.PHONY: default build buildifier

default: build

build:
	bazel build //...

gazelle:
	bazel run //:gazelle

buildifier:
	bazel run --direct_run //:buildifier
