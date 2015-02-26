#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.bashrc ~/.bashrc
ln -sf ~/dotfiles/.profile ~/.profile
mkdir -p ~/.vim/bundle
mkdir -p ~/.Trash
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
