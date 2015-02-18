#!/bin/sh

ln -sf ~/dotfiles/.vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
