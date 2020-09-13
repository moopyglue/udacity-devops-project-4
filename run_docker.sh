#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t sjhw:project4 .
[[ $? != 0 ]] && exit $?

# Step 2:
# List docker images
docker images sjhw:project4
[[ $? != 0 ]] && exit $?

# Step 3:
# Run flask app
docker run --publish 8000:80 --name project4 --rm sjhw:project4

