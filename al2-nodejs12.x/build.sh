#! /bin/bash
pushd "$(dirname $0)"

ENTRY_CMD="$1"
TARGET_STAGE="al2-nodejs12.x"
IMAGE_TAG="amazonlinux:${TARGET_STAGE}"

docker build --target $TARGET_STAGE -t $IMAGE_TAG ./

if [ ! -z "${ENTRY_CMD}" ]; then
  docker run -it $IMAGE_TAG ${ENTRY_CMD}
fi

popd
echo $IMAGE_TAG
