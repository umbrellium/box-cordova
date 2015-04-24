#!/bin/sh

# Download and build latest node.js
curl -O http://nodejs.org/dist/v0.12.2/node-v0.12.2.tar.gz
tar zxf node-v0.12.2.tar.gz
cd node-v0.12.2
./configure && make && sudo make install

# Install global nodejs packages
sudo npm install -g grunt-cli
sudo npm install -g cordova
sudo npm install -g bower
