#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=qmkey/udacity:project4

# Step 2
# Run the Docker Hub container with kubernetes
echo "RUN: kubectl run project4 --image=qmkey/udacity:project4"
kubectl run project4 --image=qmkey/udacity:project4

# Step 3:
# List kubernetes pods
echo "RUN: kubectl get pods --output=wide"
kubectl get pods --output=wide

# Step 4:
# Forward the container port to a host
echo "RUN: kubectl port-forward pod/project4 8000:80"
kubectl port-forward pod/project4 8000:80

