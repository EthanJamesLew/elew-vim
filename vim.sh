#!/bin/bash

DOCKER_IMAGE_NAME="elew_vim"
DOCKERFILE_PATH=$PWD

# Check if the Docker image exists
IMAGE_EXISTS=$(docker images -q $DOCKER_IMAGE_NAME)

# If the image doesn't exist, build it
if [ -z "$IMAGE_EXISTS" ]; then
    echo "Image not found. Building..."
    docker build -t $DOCKER_IMAGE_NAME $DOCKERFILE_PATH
    if [ $? -ne 0 ]; then
        echo "Error building Docker image. Exiting."
        exit 1
    fi
fi

# Mount the current working directory into /workspace in the container
# Pass any arguments provided to the script into the vim process in the container
docker run -it --rm \
  -v $PWD:/workspace \
  -w /workspace \
  $DOCKER_IMAGE_NAME "$@"
