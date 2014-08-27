#!/bin/sh

# Add repository
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update -y

# Install java
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo apt-get install -y oracle-java8-installer -qq

# Install ant
sudo apt-get install ant ant-contrib -y

# Set up environment variable
echo "export JAVA_HOME=\"/usr/lib/jvm/java-8-oracle\"" | sudo tee -a /etc/profile.d/java.sh
