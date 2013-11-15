#!/bin/sh

ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go)"

brew install pip

mkdir -p fonts/monofur
unzip fonts/monofur.zip -d fonts/monofur
cp fonts/monofur/*.ttf /Library/Fonts  #/System/Library/Fonts is reserved for apple

