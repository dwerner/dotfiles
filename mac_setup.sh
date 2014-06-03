#!/bin/sh

set -e
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

brew install python

cp fonts/monofur/*.ttf /Library/Fonts  #/System/Library/Fonts is reserved for apple

