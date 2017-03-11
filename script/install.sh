#!/bin/sh 

PWD=`pwd`
COMMENT_MARK="myconfig comment mark"

#bash
if [ ! -f ~/.bashrc ]; then 
    echo "create ~/.bashrc"
    touch ~/.bashrc
fi

TEMP=`grep "$COMMENT_MARK" ~/.bashrc`
if [ ! -z "$TEMP" ]; then
    echo "~/.bashrc already source $PWD/../bash/.bashrc" 
else
    echo "# $COMMENT_MARK" >> ~/.bashrc
    echo "source $PWD/../bash/.bashrc" >> ~/.bashrc
fi



#tmux
if [ ! -f ~/.tmux.conf ]; then 
    echo "create ~/.tmux.conf"
    touch ~/.tmux.conf
fi

TEMP=`grep "$COMMENT_MARK" ~/.tmux.conf`
if [ ! -z "$TEMP" ]; then
    echo "~/.tmux.conf already source $PWD/../tmux/.tumx.conf" 
else
    echo "# $COMMENT_MARK" >> ~/.tmux.conf
    echo "source $PWD/../tmux/.tmux.conf" >> ~/.tmux.conf
fi

#vim
if [ -L ~/.vim -o -e ~/.vim ]; then
    echo "~/.vim directory already existed, remove it first"
else
    ln -s "$PWD/../vim/.vim" ~
fi

