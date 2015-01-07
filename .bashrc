alias la='ls -A'

alias gs='git status'
alias gcm='git checkout master'
alias gd='git diff'
alias gpr='git pull --rebase'

alias sai='sudo apt-get install'
alias ska='sudo killall'

function chrome() { command google-chrome "$@" & }

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi

source ~/.git-prompt.sh

function EXT_COLOR () { echo -ne "\033[38;5;$1m"; }
export LS_COLORS='di=38;5;108:fi=00:*svn-commit.tmp=31:ln=38;5;116:ex=38;5;186'
export PS1='\[`EXT_COLOR 187`\]\u@\h\[\033[00m\]:\[`EXT_COLOR 174`\]\W\[`EXT_COLOR 4`\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '

stty -ixon
