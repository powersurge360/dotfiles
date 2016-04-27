# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git mercurial django pip npm python command-not-found github)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

export WORKON_HOME="~/.virtualenvs"
[[ -e /usr/local/bin/virtualenvwrapper.sh ]] && source /usr/local/bin/virtualenvwrapper.sh
[[ -e ~/Library/Python/2.7/bin/virtualenvwrapper.sh ]] && source ~/Library/Python/2.7/bin/virtualenvwrapper.sh

export EDITOR="nvim"

export NODE_PATH="/usr/local/lib/node_modules"

export PATH="/usr/local/bin:$PATH:/usr/local/share/npm/bin"
export PATH="$HOME/bin:$PATH"
[[ -e $HOME/.rbenv ]] && export PATH="$HOME/.rbenv/shims:$HOME/.rbenv/bin:$PATH"
[[ -e $HOME/.rbenv ]] && eval "$(rbenv init -)"

export CLASSPATH="."

[[ -e /usr/local/go ]] && export GOROOT=/usr/local/go && export PATH="/usr/local/go/bin":$PATH

[[ -e $HOME/.android ]] && export PATH="$HOME/.android/platform-tools:$HOME/.android/tools:$PATH"
[[ -e $HOME/.android-studio ]] && export PATH="$HOME/.android-studio/bin:$PATH"
[[ -e $HOME/.activator ]] && export PATH=~/.activator:$PATH
[[ -e $HOME/.android ]] && export ANDROID_HOME=~/Android/Sdk

export PATH=~/.local/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

[[ -e $HOME/.ansible ]] && export ANSIBLE_ROLES_PATH=$HOME/.ansible/roles

[[ -e $HOME/.composer ]] && export PATH=$HOME/.composer/vendor/bin:$PATH

PERL_MB_OPT="--install_base \"/Users/kdiale/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/kdiale/perl5"; export PERL_MM_OPT;

if [[ $TERM == xterm ]] then
    TERM=xterm-256color;
fi

BASE16_SHELL="$HOME/dotfiles/base16-shell/base16-eighties.dark.sh"
[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

export NVM_DIR="/home/powersurge/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
