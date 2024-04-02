#!/bin/sh
INSTALLER_VERSION=1.7.0-alpha.1-rpi-waveshare
IMAGE_NAME="ghcr.io/yellowbox-au/talos-installer:$INSTALLER_VERSION"
DOCKER_BUILDKIT=0 docker build --build-arg RM="/lib/modules" -t "$IMAGE_NAME" . && docker push "$IMAGE_NAME"
