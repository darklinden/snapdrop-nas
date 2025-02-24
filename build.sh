#!/bin/bash

DATE=$(date '+%Y%m%d')

# Define the Docker image name and tag
IMAGE_NAME="snapdrop_client"
IMAGE_TAG=$DATE

# Build the Docker image
docker build --no-cache -t $IMAGE_NAME:$IMAGE_TAG -f ./client.Dockerfile ./

docker save $IMAGE_NAME:$IMAGE_TAG | gzip >$IMAGE_NAME-$IMAGE_TAG.tar.gz

IMAGE_NAME="snapdrop_server"
IMAGE_TAG=$DATE

# Build the Docker image
docker build --no-cache -t $IMAGE_NAME:$IMAGE_TAG -f ./server.Dockerfile ./

docker save $IMAGE_NAME:$IMAGE_TAG | gzip >$IMAGE_NAME-$IMAGE_TAG.tar.gz
