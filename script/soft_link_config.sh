#!/bin/sh 

PWD=`pwd`

#.bashrc
ln -s "$PWD/../bash/.bashrc" ~/.bashrc

#.tmux.conf
ln -s "$PWD/../tmux/.tmux.conf" ~/.tmux.conf

#.vim
ln -s "$PWD/../vimconfig" ~/.vim

