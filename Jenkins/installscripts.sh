#!/bin/bash

#Docker
sudo apt update
sudo apt install -y curl jq

#Install Docker
curl http://get.docker.com | sudo bash
sudo usermod -aG docker jenkins

#Docker Login
docker login --username $DOCKER_USERNAME --pasword $DOCKER_PASSWORD

#Install Docker Compose
version=$(curl -s https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name')
sudo curl -L "https://github.com/docker/compose/releases/download/${version}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose