#!/bin/bash

# Enable debug output
PS4="\n\033[1;33m>>\033[0m "; set -x

LOCATION=$(realpath "$0")
DIR=$(dirname "$LOCATION")

sudo cp -r /root/.minikube ~/.minikube

sudo chown -R $USER ~/.minikube

mkdir -p ~/.kube

minikube update-context

