#!/bin/sh
set -e

echo "--- Build image"
eval "$($(dirname $0)/env.sh)"
$(dirname $0)/../build.sh $GRAFANA_VERSION $DOCKER_IMAGE $VERSION
if [ "$PUSH_IMAGE" == "true" ]; then
  $(dirname $0)/push.sh
fi;