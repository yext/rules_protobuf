# ****************************************************************
# List of external dependencies
# ****************************************************************

DEPS = {

    "org_golang_x_net": {
        "rule": "new_go_repository",
        "importpath": "golang.org/x/net",
        "commit": "2a35e686583654a1b89ca79c4ac78cb3d6529ca3",
    },

    "com_github_golang_glog": {
        "rule": "new_go_repository",
        "importpath": "github.com/golang/glog",
        "commit": "23def4e6c14b4da8ac2ed8007337bc5eb5007998", # Jan 25, 2016
    },

    "com_github_golang_protobuf": {
        "rule": "new_go_repository",
        "importpath": "github.com/golang/protobuf",
        "commit": "8ee79997227bf9b34611aee7946ae64735e6fd93", # ~ Nov 16, 2016
    },

    "com_github_google_go_genproto": {
        "rule": "new_go_repository",
        "importpath": "github.com/google/go-genproto",
        "commit": "b3e7c2fb04031add52c4817f53f43757ccbf9c18",
    },

    "org_golang_google_grpc": {
        "rule": "new_go_repository",
        "importpath": "google.golang.org/grpc",
        "tag": "v1.0.5",
    },

}
