#!/bin/sh

set -e

mkdir -p ~/Development
sudo add-apt-repository -y ppa:cwchien/gradle
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository ppa:nilarimogard/webupd8

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list'

sudo apt-get update

sudo apt-get install -y vim-nox \
	zsh \
	tree \
	rake \
	python-pip \
	python-dev \
	oracle-java8-installer \
	google-chrome-stable \
	gradle

sudo dpkg --add-architecture i386
sudo apt-get update

sudo pip install git+git://github.com/Lokaltog/powerline

wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

echo "Run 'rake install' to complete dotfiles install"
