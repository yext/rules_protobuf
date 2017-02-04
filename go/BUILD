package(default_visibility = ["//visibility:public"])

load("//protobuf:rules.bzl", "proto_language")

proto_language(
    name = "go",
    pb_file_extensions = [".pb.go"],
    pb_plugin = "@com_github_golang_protobuf//protoc-gen-go",
    pb_plugin_implements_grpc = True,
    prefix = "//:go_prefix",
)


proto_language(
    name = "google-api",
    pb_plugin_name = "go",
    pb_file_extensions = [".pb.go"],
    pb_plugin = "@com_github_golang_protobuf//protoc-gen-go",
    pb_plugin_implements_grpc = True,
    prefix = "//:go_prefix",
    importmap = {
        "google/api/annotations.proto": "github.com/google/go-genproto/googleapis/api/annotations",
    },
    pb_inputs = [
        "@com_github_google_protobuf//:well_known_protos",
        "@com_github_googleapis_googleapis//:well_known_protos",
    ],
    pb_imports = [
        "external/com_github_google_protobuf/src",
        "external/com_github_googleapis_googleapis",
    ],
)
