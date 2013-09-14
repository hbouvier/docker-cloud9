#!/bin/bash

# If DOCKER_USER environment variable is not set, use the USER environement variable as default
: ${DOCKER_USER:=$USER}
docker build -t $DOCKER_USER/cloud9 .

echo "Cloud9 Image is now ready as $DOCKER_USER/cloud9."
echo "You can submit it to the docker registry by executing 'docker push $DOCKER_USER/cloud9'"
