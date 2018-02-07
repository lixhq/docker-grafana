#!/bin/sh
set -e

eval "$($(dirname $0)/env.sh)"

echo "--- Push elasticsearch image"
docker tag "$DOCKER_IMAGE" "quay.io/lixtech/$REPO:$FULL_VERSION"
docker push "quay.io/lixtech/$REPO:$FULL_VERSION"