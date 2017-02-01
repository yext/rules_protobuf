package(default_visibility = ["//visibility:public"])

load("//go:rules.bzl", "go_proto_library")

go_proto_library(
    name = "wktlib",
    protos = ["wkt.proto"],
    verbose = 1,
)


go_proto_library(
    name = "alib",
    protos = ["lib/a.proto"],
    verbose = 1,
    proto_deps = [
        ":wktlib",
    ]
)
