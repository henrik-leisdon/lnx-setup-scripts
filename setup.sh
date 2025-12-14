#!/bin/bash


set -e

source /etc/os-release


case "$ID" in
  ubuntu)
    exec ./distro-scripts/ubuntu.sh
    ;;
  fedora)
    exec /distro-scripts/fedora.sh
    ;;
  *)
    echo "Unsupported distro: $ID"
    exit 1
    ;;
esac

