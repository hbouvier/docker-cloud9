# Cloud9.io Running in a Docker.io Container

Start by installing Docker.io (see instructions at http://www.docker.io/)
Then to build your own image you can set the environment variable DOCKER_USER to your own docker registry user name (only if it is different from your $USER environment variable).

	export DOCKER_USER=__my_docker_registry_user_if_you_have_one

Then build the container:
	./build.sh

Then you can start it

	./start.sh

If the container stops (cloud9 crash or your docker server goes down) you can restart it by
	./restart.sh


