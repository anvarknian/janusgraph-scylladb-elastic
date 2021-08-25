#!/bin/bash
## Installing Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
## Running Docker
sudo systemctl enable docker
sudo systemctl start docker
## Fixing user's permissions
export CURRENT_USER=$(whoami)
sudo usermod -aG docker $CURRENT_USER
sudo systemctl restart docker
## Installing docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose


## Checking version of Docker and docker-compose
docker version
docker-compose --version

