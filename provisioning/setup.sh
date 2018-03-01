#!/bin/bash

echo "**********************************************"
echo "Adding docker to the aptitude list"
echo "**********************************************"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
    $(lsb_release -cs) \
    stable"

echo "**********************************************"
echo "Installing common dependencies (java, maven, mariadb-client, ...)"
echo "**********************************************"

apt-get update
apt-get upgrade -y
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    openjdk-8-jdk \
    maven \
    mariadb-client \
    git \
    git-svn \
    subversion \
    zip \
    unzip \
    zsh \
    docker-ce
apt-get autoclean
apt-get autoremove

echo "**********************************************"
echo "Installing docker-compose"
echo "**********************************************"

curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
usermod -aG docker vagrant

echo "**********************************************"
echo "Installing zsh with antigen"
echo "**********************************************"

curl -L git.io/antigen > antigen.zsh
chsh -s /bin/zsh vagrant
