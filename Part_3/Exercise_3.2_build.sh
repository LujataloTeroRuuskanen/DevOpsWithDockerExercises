#!/bin/bash
# argument 1: url of git repo to download
# argument 2: subfolder of docker project in repo
# argument 3: image name
# argument 4: Docker Hub username
# argument 5: Docher Hub password
git clone $1
cd $2
docker build . -t $3
docker login --username=$4 --password=$5
docker push $3
