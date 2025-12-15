#!/bin/bash


set -e

source /etc/os-release


case "$ID" in
  ubuntu)
    exec /distro-scripts/setup-ubuntu.sh
    ;;
  fedora)
    exec /distro-scripts/setup-fedora.sh
    ;;
  *)
    echo "Unsupported distro: $ID"
    exit 1
    ;;
esac

