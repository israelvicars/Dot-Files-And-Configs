# ZSH

export ZSH=/Users/israel/.oh-my-zsh

ZSH_THEME="agnoster"
plugins=(git zsh-autosuggestions ember-cli)

source $ZSH/oh-my-zsh.sh

# USER 

DEFAULT_USER="israel"
export EDITOR="vim"

# APPS

export VAGRANT_DEFAULT_PROVIDER="virtualbox"

# SRC

source ~/.tmuxinator/completion.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export PATH=/usr/local/sbin:$PATH
export PATH=/anaconda3/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /usr/local/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh