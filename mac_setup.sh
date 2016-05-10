#!/bin/sh

set -e
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


brew install python

cp fonts/monofur/*.ttf /Library/Fonts  #/System/Library/Fonts is reserved for apple

