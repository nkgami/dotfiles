#!/bin/sh

ln -sf ~/dotfiles/.vimrc .vimrc
ln -sf ~/dotfiles/colors ~/.vim
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
