# navigation
# No more cd ../../../..
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

alias l='ls -lah'
alias clr="clear"

# update
alias update="sudo apt-get update"
alias upgrade="sudo apt update && sudo apt upgrade && sudo apt autoremove && sudo apt autoclean"


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# zip
alias tar-dir="tar -czvf"
alias untar-dir="tar -xvf"

# network:
alias ports='sudo netstat -tulanp'

# firefox
alias fxsrv="nohup firefox --profile /home/rick/.mozilla/firefox/3eihfh9a.Server </dev/null &>/dev/null & exit"
alias fxo="nohup firefox --profile /home/rick/.mozilla/firefox/793m1urs.browsing </dev/null &>/dev/null & exit"

alias connect-to-server="ssh rick@192.168.2.138"
alias whattimeisit="watch -n 1 date" 

# ssh
alias unlock-git-ssh="ssh-add ~/.ssh/git_key"

# Git:
alias gst="git status"
alias gadd="git add"
gcm(){
    git commit -m "$*"
}
alias gbr="git branch"
alias gco="git checkout"
alias gpll="git pull"
alias gpusho="git push -u origin"

# python:
alias server="python3 -m http.server"
alias python="python3"
alias py="python3"
