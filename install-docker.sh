#!/bin/bash

echo "remove"
sudo apt remove docker docker-engine docker.io containerd runc

echo "update"
sudo apt update

echo "install"
sudo apt install -y apt-transport-https  ca-certificates curl gnupg-agent software-properties-common


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88

echo "add-apt-repository"

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   bionic \
   stable"


echo "install"
sudo apt update
sudo apt -y install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 