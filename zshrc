ZSH=$HOME/.oh-my-zsh
ZSH_THEME="mh"
DISABLE_AUTO_UPDATE="true"

plugins=(git rbates)

export EDITOR='vim'
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"

export BUILD_TAG=linux-ubuntu-x86_64

source $ZSH/oh-my-zsh.sh

export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export NDK_MODULE_PATH="$HOME/Development/tools"

export GOROOT="$HOME/Development/go"
export PATH="$GOROOT/bin:$PATH"

if [ -d "$HOME/bin" ]; then
   PATH="$HOME/bin:$PATH"
fi

if [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
      source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi
