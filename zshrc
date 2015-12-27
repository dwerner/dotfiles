ZSH=$HOME/.oh-my-zsh
ZSH_THEME="afowler"
DISABLE_AUTO_UPDATE="true"

plugins=(git rbates)

export EDITOR='vim'
export ADT_HOME="$HOME/Development/adt-bundle/sdk"
export ANDROID_HOME="$ADT_HOME"
export GROOVY_HOME="$HOME/Development/groovy"
export GRADLE_HOME="$HOME/Development/gradle-2.0"
export ANDROID_SDK="$ADT_HOME"
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"

alias gbv="git branch -vv"
alias x-hd="xrandr --output DisplayPort-0 --mode 1920x1080"
alias x-4k="xrandr --output DisplayPort-0 --mode 3840x2160"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$ADT_HOME/platform-tools:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/Development/vertx/vertx-dist/bin:$PATH"
export PATH="$ADT_HOME/tools:$PATH"
export PATH="$GROOVY_HOME/bin:$PATH"
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
