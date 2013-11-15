ZSH=$HOME/.oh-my-zsh
ZSH_THEME="afowler"
DISABLE_AUTO_UPDATE="true"

plugins=(git rbates)

export PATH="/usr/local/bin:$PATH"
export EDITOR='vim'
export ADT_HOME="$HOME/Development/adt-bundle/sdk"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH="$ADT_HOME/platform-tools:$PATH"
if [ -d "$HOME/.local/bin" ]; then
   PATH="$HOME/.local/bin:$PATH"
fi

if [[ -r /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
      source /usr/local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi
