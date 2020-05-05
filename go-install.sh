#!/bin/bash

#verificar se nao ha versao mais recente
wget  https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz -P /tmp

sudo tar xf /tmp/go1.14.2.linux-amd64.tar.gz -C /opt
mkdir -p $HOME/go/bin
mkdir -p $HOME/go/src

# > sudo nano /etc/profile.d/go.sh


#export GOROOT=/opt/go
#export GOPATH=$HOME/go
#export PATH=$GOPATH/bin:$GOROOT/bin:$PATH

#sudo chmod +x /etc/profile.d/go.sh
#source /etc/profile.d/go.sh
#go version
#go env

