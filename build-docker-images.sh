#!/bin/sh
set -e

TAG="${1:-latest}"
docker build -t sneezymud/sneezymud:"$TAG" docker
docker build -t sneezymud/sneezymud-buildertools:"$TAG" web

docker push sneezymud/sneezymud:"$TAG"
docker push sneezymud/sneezymud-buildertools:"$TAG"