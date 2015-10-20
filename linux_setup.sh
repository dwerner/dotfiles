#!/bin/sh

sudo apt-get install -y python-pip
sudo pip install git+git://github.com/Lokaltog/powerline

wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

# install oracle's java from ppa
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get -y install oracle-java8-installer

# install gradle from ppa
sudo add-apt-repository ppa:cwchien/gradle
sudo apt-get update
sudo apt-get -y install gradle

# install lxc-docker
sudo sh -c "echo deb https://get.docker.io/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
sudo apt-get update
sudo apt-get -y install lxc-docker
