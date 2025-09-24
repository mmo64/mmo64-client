#!/bin/bash
set -e

GIT_HASH=$(git rev-parse HEAD)
echo "using git hash $GIT_HASH"

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin

docker pull gmanthemarioguy/sm64jsarchive-assets || true
docker build --cache-from=gmanthemarioguy/sm64jsarchive-assets -t gmanthemarioguy/sm64jsarchive-assets:latest .
docker push gmanthemarioguy/sm64jsarchive-assets:latest
docker tag gmanthemarioguy/sm64jsarchive-assets gmanthemarioguy/sm64jsarchive-assets:$GIT_HASH
docker push gmanthemarioguy/sm64jsarchive-assets:$GIT_HASH
