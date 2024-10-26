#!/bin/bash

# Constants
RELEASE_NAME="details-app-release"
NAMESPACE="${1:-details-app-namespace}"  # Default namespace or use the first argument
HELM_CHART_DIR="./details-app"
DOCKER_REPOSITORY="danors/details-app"  # Docker repository name

# Check if namespace exists; if not, create it
kubectl get namespace $NAMESPACE > /dev/null 2>&1
if [ $? -ne 0 ]; then
  echo "Creating namespace: $NAMESPACE"
  kubectl create namespace $NAMESPACE
fi

# Install or upgrade Helm release
echo "Deploying Helm chart in namespace: $NAMESPACE"
helm upgrade --install $RELEASE_NAME $HELM_CHART_DIR --namespace $NAMESPACE --set image.repository=$DOCKER_REPOSITORY

echo "Deployment complete! Check the status with:"
echo "  kubectl get pods -n $NAMESPACE"
