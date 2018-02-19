# Files
alias ls="ls -G"
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
alias restow="~/Projects/dotfiles/stow/stow-all"

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

# Git
alias g="git"
alias gs="git status"
function gc() {
    git checkout -b $1
    git push --set-upstream origin $1
}