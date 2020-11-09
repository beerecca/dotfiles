# Carry over aliases to the root account when using sudo
alias sudo='sudo '

# Files
alias ls="ls -Ga"
alias l='ls -lAhG'
alias rm='rm -vir'
alias cp='cp -vi'
alias mv='mv -vi'
alias mkdir="mkdir -pv"
alias tree="tree -C -L 4 -I node_modules"
alias diff="colordiff -y"
function cdls() { 
    cd "$@" && ls; 
}

# Shell
alias reshell="source ~/.bashrc"
alias restow="~/Projects/dotfiles/stow/stow-all && source ~/.bashrc && echo \"Restowed and reloaded bash for you!\""

# Navigation
alias ~="cd ~"
alias ..="cd .."
alias ...="cd ../.."

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Show/hide hidden files in Finder
alias showdotfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedotfiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons (useful when presenting)
alias showdeskicons="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias hidedeskicons="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

# Jest
function jw() {
    DEBUG_PRINT_LIMIT=7000 yarn run jest --watch --testPathPattern=$1
}
function jwl() {
    DEBUG_PRINT_LIMIT=12000 yarn run jest --watch --testPathPattern=$1
}

# Git
alias g="git"

# Git | Info
alias gs="git status -sb"
alias gl="git log-recent" # Last 15 commits
alias gld="git log-diverged" # Differences from origin/master
alias gb="git branch -v --sort=committerdate" # Verbose list of local branches

# Git | Get
alias gco="git checkout --quiet"
__git_complete gco _git_checkout # Ensures the alias also gets autocompletion of branch names
alias gpull="git pull" # With my config this means fetch, autostash, and rebase
alias gf="git fetch --all"

# Git | Edit
function gnew() {
    git checkout -b $1
    git push --set-upstream origin $1
}
alias grb="git rebase -i HEAD~10" # Use grc while rebasing to edit a commit
alias gstl="git stash list"
function gst() { 
    if [ -z "$1" ]; then
        git stash -u -q # Quiet, and include untracked files
    else
        git stash push -u -q -m $1 # Allows you to name the stash
    fi   
}
function gsta() {
    if [ -z "$1" ]; then
        git stash apply -q && gs # Defaults to most recent stash
    else
        # Will search the stash list for your stash name
        git stash apply -q $(git stash list | grep "$1" | cut -d: -f1) && gs
    fi   
}

# Git | Reset
function gr() { # Remove all staged and untracked files
    git fetch
    git reset --hard
    git clean -df # Recursive folders, and force
}
alias grc="git reset HEAD^" # Go back to before you last committed
function grf() { # Reset to upstream master
    git fetch
    git reset --hard origin/master
    git clean -df
}
alias gprune="git prune-local"

# Git | Set
alias ga="git add --all -v"
alias gc="git commit -m"
alias gca="git commit --amend --no-edit"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gpr="pull-request -por"

# Check out https://hub.github.com/ for more Github functions