ZSH=$HOME/.oh-my-zsh
ZSH_THEME="afowler"
DISABLE_AUTO_UPDATE="true"

plugins=(git rbates)

export EDITOR='vim'
export ADT_HOME="$HOME/Development/adt-bundle/sdk"
export GROOVY_HOME="$HOME/Development/groovy"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$ADT_HOME/platform-tools:$PATH"
export PATH="$HOME/.jenv/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/Development/vertx/vertx-dist/bin:$PATH"
export PATH="$ADT_HOME/tools:$PATH"
export PATH="$GROOVY_HOME/bin:$PATH"
export GOPATH="$HOME/Development/go"
export GOROOT="`go env GOROOT`"


if [ -d "$HOME/bin" ]; then
   PATH="$HOME/bin:$PATH"
fi

if [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
      source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi

alias nodeh="node --harmony"

eval "$(jenv init -)"
