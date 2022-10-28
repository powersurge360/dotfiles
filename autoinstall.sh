#!/usr/bin/env sh

mkdir ~/.config
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/work.gitconfig ~/.work.gitconfig
ln -s ~/dotfiles/oh-my-zsh ~/.oh-my-zsh
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/base16-shell ~/.config/base16-shell
ln -s ~/dotfiles/doom.d ~/.doom.d
mkdir ~/.vim
cp -R ~/dotfiles/vim/autoload ~/.vim/
ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
ln -s ~/dotfiles/config.lua ~/.config/lvim/config.lua
mkdir -p ~/.config/kitty
ln -s ~/dotfiles/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/dotfiles/railsrc ~/.railsrc
ln -s ~/dotfiles/asdfrc ~/.asdfrc
