ZSH=$HOME/.oh-my-zsh
ZSH_THEME="mh"
DISABLE_AUTO_UPDATE="true"

plugins=(git rbates)

export EDITOR='vim'
export ADT_HOME="$HOME/Development/adt-bundle/sdk"
export ANDROID_HOME="$ADT_HOME"
export ANDROID_SDK="$ADT_HOME"
export ANDROID_SDK="$HOME/Development/android-ndk-r10e"
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
export RUST_SRC_PATH="$HOME/Development/rust-src"
export VENDOR_HOME="$HOME/Development/vendor"
export FLEX_HOME="$VENDOR_HOME/sdks/apache-flex-4.15"
export COMPILE_THREADS=32

export WC_DEV_HOME="$HOME/Development/wc"

source $ZSH/oh-my-zsh.sh

export PATH="$ADT_HOME/platform-tools:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$ADT_HOME/tools:$PATH"
export PATH="$GROOVY_HOME/bin:$PATH"
export PATH="/home/dan/.cargo/bin:$PATH"
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
