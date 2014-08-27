#!/bin/sh

# Add repository
sudo add-apt-repository -y ppa:chris-lea/node.js
sudo apt-get update -y

# Install nodejs
sudo apt-get install -y nodejs

# Install global nodejs packages
sudo npm install -g grunt-cli
sudo npm install -g cordova
sudo npm install -g bower
