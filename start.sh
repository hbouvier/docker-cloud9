#!/bin/bash
# If DOCKER_USER environment variable is not set, use the USER environement variable as default
: ${DOCKER_USER:=$USER}
ID=$(mkdir -p ~/workspace && docker run -d -p 3131:5000 -v ~/workspace:/workspace $DOCKER_USER/cloud9 /cloud9/bin/cloud9.sh -l 0.0.0.0 -p 5000 -w /workspace
echo $ID > .cloud9.id
echo "Cloud9 started with ID=$ID"

