#!/usr/bin/env bash
set -e

eval "$($(dirname $0)/env.sh)"

echo "--- Push image"
docker tag "$DOCKER_IMAGE" "quay.io/lixtech/$REPO:$FULL_VERSION"
docker push "quay.io/lixtech/$REPO:$FULL_VERSION"
