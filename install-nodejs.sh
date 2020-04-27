#!/bin/bash

# https://github.com/nodesource/distributions/blob/master/README.md#debinstall

curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo npm i -g npm
