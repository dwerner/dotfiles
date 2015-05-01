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
export ANDROID_NDK="$HOME/Development/android-ndk-r9"
export JAVA_HOME="/usr/lib/jvm/java-8-oracle"
export JAVA_OPTS="-XX:MaxPermSize=512m -Xms512m -Xmx4000m"

alias gbv="git branch -vv"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$ADT_HOME/platform-tools:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/Development/vertx/vertx-dist/bin:$PATH"
export PATH="$ADT_HOME/tools:$PATH"
export PATH="$GROOVY_HOME/bin:$PATH"
export PATH="/usr/local/DS-5/bin:$PATH"
export NDK_MODULE_PATH="$HOME/Development/tools"
source "$HOME/.rvm/scripts/rvm"

export GOPATH="$HOME/Development/go"
export GOROOT="`go env GOROOT`"


if [ -d "$HOME/bin" ]; then
   PATH="$HOME/bin:$PATH"
fi

if [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
      source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

alias nodeh="node --harmony"


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
