alias la='ls -A'

alias gs='git status'
alias gcm='git checkout master'
alias gd='git diff'
alias gpr='git pull --rebase'

alias sai='sudo apt-get install'

function chrome() { command google-chrome "$@" & }

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

stty -ixon
