#! /bin/bash

mkdir -p test_dir

cd ./test_dir

echo '{"dependencies": {"fswatch" : "ulrikstrid/esy-fswatch:esy.json#'$(git rev-parse --short HEAD)'"}}' > package.json

echo "ESY INSTALL"
esy install
echo "ESY BUILD"
esy build

esy b fswatch --help
esy which fswatch
