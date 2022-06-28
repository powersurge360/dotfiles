#!/usr/bin/env sh

mkdir ~/.config
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/ackrc ~/.ackrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/work.gitconfig ~/.work.gitconfig
ln -s ~/dotfiles/oh-my-zsh ~/.oh-my-zsh
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/base16-shell ~/.config/base16-shell
ln -s ~/dotfiles/spacemacs ~/.spacemacs
mkdir ~/.vim
cp -R ~/dotfiles/vim/autoload ~/.vim/
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
ln -s ~/dotfiles/tern-config ~/.tern-config
