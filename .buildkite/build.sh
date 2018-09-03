#!/usr/bin/env bash
set -e

eval "$($(dirname $0)/env.sh)"

echo "--- Build image"
$(dirname $0)/../build.sh $GRAFANA_VERSION $DOCKER_IMAGE $VERSION

if [ "$PUSH_IMAGE" == "true" ]; then
  $(dirname $0)/push.sh
fi;
