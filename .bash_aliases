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
alias wifidns="networksetup -setdnsservers Wi-Fi 8.8.8.8 8.8.1.1" # Set WiFi DNS to Google DNS servers
alias wifidnsclear="networksetup -setdnsservers Wi-Fi empty"      # Clear WiFi DNS

# Laravel
alias homestead='function __homestead() { (cd ~/Homestead && vagrant $*); unset -f __homestead; }; __homestead' # homestead: Vagrant shortcut
alias artisan="php artisan"