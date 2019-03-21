# ZSH

export ZSH="/Users/israelvicars/.oh-my-zsh"

ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# USER

DEFAULT_USER="israelvicars"
export EDITOR="vim"

# APPS

# export VAGRANT_DEFAULT_PROVIDER="virtualbox"

# SRC

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=/usr/local/sbin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
