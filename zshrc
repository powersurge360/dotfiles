[[ $TERM == "dumb" ]] && unsetopt zle && PS1='$ ' && return
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DEFAULT_USER=powersurge360

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git aws mercurial pip npm python command-not-found github)

source $ZSH/oh-my-zsh.sh

# To stop tmux from mutating the path over and over again when profile helper runs
if [ -f /etc/profile ]; then
    PATH=""
    source /etc/profile
fi

# Customize to your needs...

export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"

export EDITOR="nvim"

export CLASSPATH="."

[[ -e $HOME/.android ]] && export PATH="$HOME/.android/platform-tools:$HOME/.android/tools:$PATH"
[[ -e $HOME/.android-studio ]] && export PATH="$HOME/.android-studio/bin:$PATH"
[[ -e $HOME/.activator ]] && export PATH=~/.activator:$PATH
[[ -e $HOME/.android ]] && export ANDROID_HOME=~/Android/Sdk

[[ -e $HOME/.emacs.d ]] && export PATH="$HOME/.emacs.d/bin:$PATH/"

export PATH=~/.local/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[[ -e $HOME/.ansible ]] && export ANSIBLE_ROLES_PATH=$HOME/.ansible/roles

export LEDGER_FILE=~/finances/finances.ledger
export LEDGER_PRICE_DB=~/finances/prices_db.ledger

# Go installation
export GOPATH=~/.go
export PATH=$PATH:$(go env GOPATH)/bin

export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

[[ -e $HOME/.composer ]] && export PATH=$HOME/.composer/vendor/bin:$PATH

[[ -e ~/.google_appengine ]] && export PATH=$PATH:~/.google_appengine

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[[ -d /usr/local/opt/asdf ]] && . /usr/local/opt/asdf/libexec/asdf.sh
[[ -d /opt/homebrew/opt/asdf ]] && . /opt/homebrew/opt/asdf/libexec/asdf.sh

# pnpm
export PNPM_HOME="/Users/powersurge360/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

eval "$(direnv hook zsh)"
