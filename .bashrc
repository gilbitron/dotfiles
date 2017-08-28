# Composer
export PATH="/Users/gilbitron/.composer/vendor/bin:$PATH"
# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
# Python
export PATH="/Users/gilbitron/Library/Python/2.7/bin:$PATH"

# Load aliases
if [ -f ~/.bash_aliases ]; then
. ~/.bash_aliases
fi

# makes new dir and jumps inside
mcd () { 
    mkdir -p "$1" && cd "$1"; 
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
    git checkout master
    git merge --no-edit develop
    git push
    git checkout develop
}

# gitpurge: Delete local branches that have been deleted remotely
gitpurge() {
    git checkout develop
    git branch --merged | grep -v "\*" | grep -v "master" | xargs -n 1 git branch -d
}
