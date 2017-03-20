# Composer
export PATH="/Users/gilbitron/.composer/vendor/bin:$PATH"
# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# -------
# Aliases
# -------
alias cp="cp -iv"                                   # Preferred "cp" implementation
alias mv="mv -iv"                                   # Preferred "mv" implementation
alias mkdir="mkdir -pv"                             # Preferred "mkdir" implementation
alias ll="ls -FGlAhp"                               # List all files in current directory in long list format
alias ldir="ls -al | grep ^d"                       # List all directories in current directory in long list format
alias cd..="cd ../"                                 # Go back 1 directory level (for fast typers)
alias ..="cd ../"                                   # Go back 1 directory level
alias ...="cd ../../"                               # Go back 2 directory levels
alias .3="cd ../../../"                             # Go back 3 directory levels
alias .4="cd ../../../../"                          # Go back 4 directory levels
alias .5="cd ../../../../../"                       # Go back 5 directory levels
alias .6="cd ../../../../../../"                    # Go back 6 directory levels
alias f="open ."                                    # f:         Open the current directory in Finder
alias ~="cd ~"                                      # ~:         Go Home
alias c="clear"                                     # c:         Clear terminal display
alias flushdns="sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;" # flushdns: Flush DNS (Yosemite)
alias ip="curl icanhazip.com"                       # ip:        Your public IP address
alias ut="uptime"                                   # ut:        Computer uptime
alias numfiles="echo $(ls -1 | wc -l)"              # numfiles:  Count of non-hidden files in current dir
alias edithosts="sudo nano /etc/hosts"              # edithosts: Edit /etc/hosts file
mcd () { mkdir -p "$1" && cd "$1"; }                # mcd:       Makes new dir and jumps inside
alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead' # homestead: Vagrant shortcut

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

# DB statusboard
rundbs() {
   cd ~/Documents/db-statusboard
   docker-compose up -d
}
