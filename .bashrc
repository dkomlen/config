# basic
alias la='ls -A'
alias cd..='cd ..'
alias ..='cd ..'
alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias sai='sudo apt install'
alias ska='sudo killall'
alias disk-usage="sudo du -h / | grep '[0-9\,]\+G'"

# git
alias gs='git status'
alias gcm='git checkout master'
alias gd='git diff'
alias gpr='git pull --rebase'

source ~/.git-prompt.sh

fb-push() { git commit -am "$1"; gcm; gpr; git checkout -; git push -f; }

# functions
extract() {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file" 
     fi
}

function chrome() { command google-chrome "$@" & }

# colors
if [ -e /usr/share/terminfo/x/xterm-256color ]; then
        export TERM='xterm-256color'
else
        export TERM='xterm-color'
fi
function EXT_COLOR () { echo -ne "\033[38;5;$1m"; }
export LS_COLORS='di=38;5;108:fi=00:*svn-commit.tmp=31:ln=38;5;116:ex=38;5;186'
export PS1='\[`EXT_COLOR 187`\]\u@\h\[\033[00m\]:\[`EXT_COLOR 174`\]\W\[`EXT_COLOR 4`\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '

# startup
stty -ixon
shopt -s autocd

# SSH
# eval `keychain --quiet --agents ssh --eval id_rsa`

# @description: Bootstraps a git repository for work.
#
# @param {string} repo_name - The name of the repository in ~/repo.
# @param {string} branch_name - The name of the branch to check out.
#
# @example
#   workon my-project feature-branch
#
workon() {
  local repo_name=$1
  local branch_name=$2
  local repo_dir="$HOME/$repo_name"

  # Validate arguments
  if [ -z "$repo_name" ] || [ -z "$branch_name" ]; then
    echo "Usage: workon <repo-name> <branch-name>"
    return 1
  fi

  # Check if directory exists
  if [ ! -d "$repo_dir" ]; then
    echo "Error: Directory does not exist: $repo_dir"
    return 1
  fi

  cd "$repo_dir"

  # Check git status
  if ! git diff-index --quiet HEAD --; then
    read -p "You have uncommitted changes. Stash them? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      git stash
    else
      echo "Aborting."
      return 1
    fi
  fi

  echo "Checking out main and rebasing with remote..."
  git checkout main && git pull --rebase origin main

  echo "Checking out branch '$branch_name'..."
  git checkout -b "$branch_name"
}
