PROJECT := golang-boilerplate

dep:
	dep ensure
	bazel run //:gazelle

run:
	bazel run ${PROJECT}
