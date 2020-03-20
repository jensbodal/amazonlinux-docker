#! /bin/bash
NODE_VERSION=12.16.1
IMAGE_TAG_BASE="jensbodal/amazonlinux"
IMAGE_TAG_NODE12="${IMAGE_TAG_BASE}:al2-nodejs12.x"
IMAGE_TAG_NODE12_EXACT="${IMAGE_TAG_BASE}:al2-nodejs${NODE_VERSION}"

docker login && \
  docker image build --target "al2-nodejs12.x" --tag ${IMAGE_TAG_NODE12} ./ && \
  docker image build --target "al2-nodejs12.x" --tag ${IMAGE_TAG_NODE12_EXACT} ./ && \
  docker push ${IMAGE_TAG_NODE12} && \
  docker push ${IMAGE_TAG_NODE12_EXACT}
