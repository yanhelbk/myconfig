#!/bin/sh 

PWD=`pwd`

#bash
if [ -L ~/.bashrc -o -e ~/.bashrc ]; then
    echo "~/.bashrc already existed, remove it first"
else
    ln -s "$PWD/../bash/.bashrc" ~
fi

#tmux
if [ -L ~/.tmux.conf -o -e ~/.tmux.conf ]; then
    echo "~/.tmux.conf already existed, remove it first"
else
    ln -s "$PWD/../tmux/.tmux.conf" ~
fi

#vim
if [ -L ~/.vim -o -e ~/.vim ]; then
    echo "~/.vim directory already existed, remove it first"
else
    ln -s "$PWD/../vim/.vim" ~
fi

