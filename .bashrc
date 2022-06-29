# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/bashrc.pre.bash" ]] && . "$HOME/.fig/shell/bashrc.pre.bash"

# Homebrew (Apple Silicon)
export PATH="/opt/homebrew/bin:$PATH"
# Composer
export PATH="$HOME/.composer/vendor/bin:$PATH"
# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# Python
export PATH="/usr/local/opt/python/libexec/bin:$PATH"
export PATH="$HOME/Library/Python/3.7/bin:$PATH"

# Load aliases
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# https://github.com/dylanaraps/neofetch
if hash neofetch 2>/dev/null; then
    neofetch
fi

# makes new dir and jumps inside
mcd() {
    mkdir -p "$1" && cd "$1"
}

# display useful host related informaton
ii() {
    echo -e "\nYou are logged on ${RED}$HOST"
    echo -e "\nAdditionnal information:$NC " ; uname -a
    echo -e "\n${RED}Users logged on:$NC " ; w -h
    echo -e "\n${RED}Current date :$NC " ; date
    echo -e "\n${RED}Machine stats :$NC " ; uptime
    echo -e "\n${RED}Current network location :$NC " ; scselect
    echo -e "\n${RED}Public facing IP Address :$NC " ; ip
}

# gitmd: git "merge and deploy"
gitmd() {
    git -c core.hooksPath=/dev/null checkout master
    git merge --no-edit develop
    git push
    git -c core.hooksPath=/dev/null checkout develop
}

# gitpurge: Delete local branches that have been deleted remotely
gitpurge() {
    git checkout develop
    git branch --merged | grep -v "\*" | grep -v "master" | xargs -n 1 git branch -d
}

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/bashrc.post.bash" ]] && . "$HOME/.fig/shell/bashrc.post.bash"
