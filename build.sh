#!/bin/bash
GRAFANA_VERSION=$1
DOCKER_IMAGE=${2:-local/grafana}
VERSION=${3:-local}

cat Dockerfile | sed "s/<VERSION>/$GRAFANA_VERSION/" > Dockerfile.tmp
docker build -f Dockerfile.tmp -t $DOCKER_IMAGE .