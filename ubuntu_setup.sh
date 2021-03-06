#!/bin/sh

set -e

mkdir -p ~/Development

sudo apt-get update

sudo apt-get install -y vim-nox \
    zsh \
    tree \
    rake \
    cmake \
    valgrind \
    kcachegrind \
    massif-visualizer \
    python-pip \
    python-dev

sudo apt-get update

sudo pip install git+git://github.com/Lokaltog/powerline

wget https://github.com/Lokaltog/powerline/raw/develop/font/PowerlineSymbols.otf https://github.com/Lokaltog/powerline/raw/develop/font/10-powerline-symbols.conf
sudo mv PowerlineSymbols.otf /usr/share/fonts/
sudo fc-cache -vf
sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/

echo "Run 'rake install' to complete dotfiles install"
