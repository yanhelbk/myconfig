PS1='\W\$ '
if [ $TERM = "xterm" ]; then
    TERM='xterm-256color'
fi
if [ $TERM = "screen" ]; then
    TERM='screen-256color'
fi
set -o vi
