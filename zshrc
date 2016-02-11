ZSH=$HOME/.oh-my-zsh
ZSH_THEME="afowler"
DISABLE_AUTO_UPDATE="true"

plugins=(git rbates)

export EDITOR='vim'
export ADT_HOME="$HOME/Development/adt-bundle/sdk"
export ANDROID_HOME="$ADT_HOME"
export ANDROID_SDK="$ADT_HOME"
export ANDROID_SDK="$HOME/Development/android-ndk-r10e"
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
export RUST_SRC_PATH="$HOME/Development/rust-src"

alias gbv="git branch -vv"

export MAIN_DISPLAY="DFP1"

alias x-hd="xrandr --output $MAIN_DISPLAY --mode 1920x1080"
alias x-4k="xrandr --output $MAIN_DISPLAY --mode 3840x2160"

source $ZSH/oh-my-zsh.sh

export PATH="$ADT_HOME/platform-tools:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$ADT_HOME/tools:$PATH"
export PATH="$GROOVY_HOME/bin:$PATH"
export PATH="/home/dan/.cargo/bin:$PATH"
export PATH="$HOME/bin:$PATH"

export NDK_MODULE_PATH="$HOME/Development/tools"

export GOROOT="$HOME/Development/go"
export PATH="$GOROOT/bin:$PATH"

if [ -d "$HOME/bin" ]; then
   PATH="$HOME/bin:$PATH"
fi

if [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
      source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

export NVM_DIR="/home/dan/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

export RABBIT_AUTH="experiment:experiment"
export RABBIT_VHOST="experiment"

