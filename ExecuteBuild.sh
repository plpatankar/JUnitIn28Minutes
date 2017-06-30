#!/bin/bash

echo "Hello This is $0"
# Cleanup 
if [ `docker inspect -f {{.State.Running}} GitHubMaven` ]; then
  docker stop GitHubMaven
fi
docker rm -f GitHubMaven 2>>/dev/null

docker build -t githubmavenimage .
docker run -d --name GitHubMaven -p 8090:8090 githubmavenimage


