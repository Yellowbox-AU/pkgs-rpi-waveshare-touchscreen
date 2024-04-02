#!/bin/sh
INSTALLER_VERSION=v1.7.0-alpha.1-waveshare
IMAGE_NAME="ghcr.io/yellowbox-au/talos-installer:$INSTALLER_VERSION"
docker build --file Pkgfile.installer-rpi-waveshare --build-arg RM="/lib/modules" -t "$IMAGE_NAME" . && docker push "$IMAGE_NAME"
