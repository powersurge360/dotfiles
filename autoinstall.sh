#!/usr/bin/env sh

# Set up non-brew dependencies
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/lua/config/ ~/.config/nvim/lua/plugins/

mkdir ~/.config
ln -s ~/dotfiles/gitignore ~/.gitignore
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/work.gitconfig ~/.work.gitconfig
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/doom.d ~/.doom.d
mkdir ~/.vim
cp -R ~/dotfiles/vim/autoload ~/.vim/
# ln -s ~/.vim ~/.config/nvim
ln -s ~/.vimrc ~/.config/nvim/init.vim
ln -s ~/dotfiles/config.lua ~/.config/lvim/config.lua
mkdir -p ~/.config/kitty
ln -s ~/dotfiles/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/dotfiles/railsrc ~/.railsrc
ln -s ~/dotfiles/asdfrc ~/.asdfrc
mkdir -p ~/.config/direnv
ln -s ~/dotfiles/direnv.toml ~/.config/direnv/direnv.toml

ln -s ~/dotfiles/lazyvim-plugins ~/.config/nvim/lua/plugins
ln -s ~/dotfiles/lazyvim-config ~/.config/nvim/lua/config
