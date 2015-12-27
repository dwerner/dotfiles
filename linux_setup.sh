#!/bin/sh

set -e

mkdir -p ~/Development
sudo add-apt-repository -y ppa:cwchien/gradle
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository ppa:nilarimogard/webupd8
sudo add-apt-repository ppa:obsproject/obs-studio

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google.list'

sudo apt-get update

sudo apt-get install -y vim-nox \
	zsh \
	tree \
	rake \
	python-pip \
	oracle-java8-installer \
	google-chrome-stable \
	screenkey \
	obs-studio \
	gradle

google-chrome https://www.jetbrains.com/idea/download &
google-chrome https://www.rust-lang.org/ &
google-chrome https://golang.org/ &
google-chrome http://developer.android.com/sdk/index.html &
google-chrome http://developer.android.com/sdk/installing/index.html?pkg=tools &

# Install nodejs, express-generator and mocha
wget http://nodejs.org/dist/v5.1.0/node-v5.1.0-linux-x64.tar.gz
sudo tar -C /usr/local --strip-components 1 -xzf node-v5.1.0-linux-x64.tar.gz 
npm install -G express-generator
npm install -G mocha

sudo dpkg --add-architecture i386
sudo apt-get update

sudo pip install git+git://github.com/Lokaltog/powerline

wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

echo "Run 'rake install' to complete dotfiles install"
