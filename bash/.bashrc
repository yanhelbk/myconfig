PS1='\W\$ '
if [ $TERM = "xterm" ]; then
    TERM='xterm-256color'
fi
set -o vi

alias tmux='TERM=screen-256color tmux'
