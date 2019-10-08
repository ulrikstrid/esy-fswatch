#! /bin/bash

mkdir -p test_dir

cd ./test_dir

echo '{"esy": {"release": {"bin": [], "includePackages": ["fswatch"]}}, "dependencies": {"fswatch" : "ulrikstrid/esy-fswatch:esy.json#'$(git rev-parse --short HEAD)'", "ocaml": "< 4.09.0"}}' > package.json

echo "ESY INSTALL"
esy install
echo "ESY BUILD"
esy build

esy b fswatch --help
esy which fswatch
