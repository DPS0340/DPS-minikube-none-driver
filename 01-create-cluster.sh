#!/bin/bash

# Enable debug output
PS4="\n\033[1;33m>>\033[0m "; set -x

LOCATION=$(realpath "$0")
DIR=$(dirname "$LOCATION")

# Arch (pacman) only
# FIXME: Ports with multiple distros
sudo pacman -Syu conntrack-tools crictl --noconfirm

# Assuming docker container runtime
yay -S cri-dockerd-git --noconfirm

sudo sysctl fs.protected_regular=0

sudo mkdir -p /etc/docker

sudo minikube start --driver=none
