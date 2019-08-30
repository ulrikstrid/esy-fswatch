#! /bin/bash

mkdir -p test_dir

cd ./test_dir

echo '{"dependencies": {"fswatch" : "ulrikstrid/esy-fswatch:package.json#'$(git rev-parse --short HEAD)'"}}' > package.json

esy install
esy build

esy x fswatch --help

esy which fswatch
esy x which fswatch
