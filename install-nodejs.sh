#!/bin/sh

# Add repository
curl -sL https://deb.nodesource.com/setup | sudo bash -
sudo apt-get update -yq

# Install nodejs
sudo apt-get install -y nodejs

# Install global nodejs packages
sudo npm install -g grunt-cli
sudo npm install -g cordova
sudo npm install -g bower
