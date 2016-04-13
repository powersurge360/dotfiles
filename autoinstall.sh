#!/usr/bin/env sh

ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/ackrc ~/.ackrc
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/oh-my-zsh ~/.oh-my-zsh
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
mkdir ~/.vim
cp -R ~/dotfiles/vim/autoload ~/.vim/
