#!/bin/bash

echo ""
echo "Building [gcr.io/sinahomepage/main-server] Docker Image to be run in cloud run "
echo ""

rm -f main-server

echo "If you see -- Password: -- prompt, you should enter your own password needs by SUDO in current machine!"

sudo -E CGO_ENABLED=0 GOOS=linux go build -o main-server -i github.com/SinaAb/homepage/server

gcloud container images delete gcr.io/sinahomepage/main-server --force-delete-tags --quiet

sudo -E docker rmi -f main-server
sudo -E docker rmi -f gcr.io/sinahomepage/main-server

sudo -E docker build -t main-server .

sudo -E docker tag main-server gcr.io/sinahomepage/main-server

sudo -E docker push gcr.io/sinahomepage/main-server

rm -f main-server

echo ""
echo "Docker image [gcr.io/ubiprod/acctserver] generated and pushed into GCR"
echo ""