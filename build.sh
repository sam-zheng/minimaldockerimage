#!/bin/bash

set -e

if [ $1 == "build" ]; then

	as -o minidocker.o minidocker.s
	ld -o minidocker minidocker.o

	docker build . --tag minidocker:latest
elif [ $1 == "run" ]; then
	docker run --name minidocker minidocker

elif [ $1 == "restart" ]; then

	# restart
	docker start -a minidocker
elif [ $1 == "clean" ]; then

	docker container rm minidocker
	docker image rm minidocker
fi


