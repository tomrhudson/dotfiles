#Determine which shell you're using by typing 
#echo $SHELL in Terminal.
#Then open/create correct file. For Bash it's $HOME/.bash_profile or $HOME/.bashrc. For Z shell it's $HOME/.zshrc

# SSH Accounts
alias ssh-pi1='ssh ragnar@192.168.110.163'
alias ssh-pi2='ssh pi@192.168.110.224'
alias ssh-pi3='ssh pi@192.168.110.227'


# MongoDB
alias mongod='brew services start mongodb-community@4.2'
alias mongod-status='brew services list'
alias mongod-stop='brew services stop mongodb-community@4.2'

# personal aliases - for LINUX
alias agu='sudo apt-get update'
alias agg='sudo apt-get upgrade -y'
alias agi='sudo apt-get install'
alias agr='sudo apt-get remove'

# ALIASES
alias reload!='. ~/.zshrc'
alias cls=clear
alias h.=history

# FILE TYPE COUNT
alias ftc='ls | rev | cut -d'.' -f1 | rev | sort |uniq -c'

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels

#   ---------------------------
#   2.  NETWORKING
#   ---------------------------

alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address
alias netCons='lsof -i'                             # netCons:      Show all open TCP/IP sockets
alias flushDNS='dscacheutil -flushcache'            # flushDNS:     Flush out the DNS Cache
alias lsock='sudo /usr/sbin/lsof -i -P'             # lsock:        Display open sockets
alias lsockU='sudo /usr/sbin/lsof -nP | grep UDP'   # lsockU:       Display only open UDP sockets
alias lsockT='sudo /usr/sbin/lsof -nP | grep TCP'   # lsockT:       Display only open TCP sockets
alias ipInfo0='ipconfig getpacket en0'              # ipInfo0:      Get info on connections for en0
alias ipInfo1='ipconfig getpacket en1'              # ipInfo1:      Get info on connections for en1
alias openPorts='sudo lsof -i | grep LISTEN'        # openPorts:    All listening connections
alias showBlocked='sudo ipfw list'                  # showBlocked:  All ipfw rules inc/ blocked IPs

#   ii:  display useful host related informaton
#   -------------------------------------------------------------------
    ii() {
        echo -e "\nYou are logged on ${RED}$HOST"
        echo -e "\nAdditionnal information:$NC " ; uname -a
        echo -e "\n${RED}Users logged on:$NC " ; w -h
        echo -e "\n${RED}Current date :$NC " ; date
        echo -e "\n${RED}Machine stats :$NC " ; uptime
        echo -e "\n${RED}Current network location :$NC " ; scselect
        echo -e "\n${RED}Public facing IP Address :$NC " ; myip
        echo -e "\n${RED}DNS Configuration:$NC " ; scutil --dns
        echo
    }