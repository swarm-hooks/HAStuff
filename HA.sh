#!/bin/bash

while true; do 
$response = 'docker -H $SWARM_HOST:$SWARM_PORT info'
if [ "$response" == "Cannot connect to the Docker daemon. Is the docker daemon running on this host?" ] then
	echo Run another swarm 
	./RunFailOverSwarm.sh
fi
sleep 31
done