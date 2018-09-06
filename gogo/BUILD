package(default_visibility = ["//visibility:public"])

load("//protobuf:rules.bzl", "proto_language")

proto_language(
    name = "gogo",
    go_importpath = "github.com/pubref/rules_protobuf",
    pb_file_extensions = [".pb.go"],
    pb_plugin = "@com_github_gogo_protobuf//protoc-gen-gogo",
    pb_plugin_implements_grpc = True,
)

proto_language(
    name = "gogofast",
    go_importpath = "github.com/pubref/rules_protobuf",
    pb_file_extensions = [".pb.go"],
    pb_plugin = "@com_github_gogo_protobuf//protoc-gen-gogofast",
    pb_plugin_implements_grpc = True,
)

proto_language(
    name = "gogofaster",
    go_importpath = "github.com/pubref/rules_protobuf",
    pb_file_extensions = [".pb.go"],
    pb_plugin = "@com_github_gogo_protobuf//protoc-gen-gogofaster",
    pb_plugin_implements_grpc = True,
)

proto_language(
    name = "gogoslick",
    go_importpath = "github.com/pubref/rules_protobuf",
    pb_file_extensions = [".pb.go"],
    pb_plugin = "@com_github_gogo_protobuf//protoc-gen-gogoslick",
    pb_plugin_implements_grpc = True,
)
