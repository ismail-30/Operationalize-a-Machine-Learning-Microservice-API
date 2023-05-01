#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath="ismail2019/ml_microservice"

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username ismail2019
docker tag ml_microservice $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath
