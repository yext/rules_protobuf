package(default_visibility = ["//visibility:public"])

load("//protobuf:rules.bzl", "proto_language")

proto_language(
    name = "go",
    go_importpath = "github.com/pubref/rules_protobuf",
    pb_file_extensions = [".pb.go"],
    pb_plugin = "@com_github_golang_protobuf//protoc-gen-go",
    pb_plugin_implements_grpc = True,
)
