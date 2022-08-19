#!/bin/bash

# Git aliases
alias gs="git status"
alias gstatus=gs
alias gitstatus=gs
alias ga="git add ."
alias gadd=ga
alias gitadd=ga
alias gc="git commit -m"
alias gcommit=gc
alias gcomit=gc
alias gitcommit=gc
alias gitcomit=gc
alias gp="git push"
alias gpush=gp
alias gitpush=gp
alias gf="git fetch"
alias gfetch=gf
alias gitfetch=gf
alias gpl="git pull"
alias gpull=gpl
alias gitpull=gpl

# Push .bash_aliases to git repo
function pushalias() {
	cp ~/.bash_aliases ~/projects/bash_aliases/.bash_aliases
	pushd ~/projects/bash_aliases
	ga
	gc "$1"
	gp
	popd
	loadalias
}

# Edit aliases
alias editalias="sudo vim ~/.bash_aliases"
alias editaliases=editalias

# Load Aliases
alias loadalias="source ~/.bash_aliases"
alias loadaliases=loadalias
alias reloadalias=loadalias
alias reloadaliases=loadalias

# Start password protected VNC server
alias startvnc="x11vnc -rfbauth ~/.vnc/passwd"

# Turn on LubuntuLaptop display
alias display-on="echo 'Switching on LubuntuLaptop display...' && xset -display :0.0 dpms force on"

# Turn off LubuntuLaptop display
alias display-off="echo 'Switching off LubuntuLaptop display...' && xset -display :0.0 dpms force off"

# Advanced process status
alias ps="ps -aux"

# Make directory and cd into it
function mkcd() {
	mkd "$1"
	cd -- "$1"
}

# Move a file to a directory and cd into it
mvcd() {
	mv -- "$1" "$2"
	custom_cd "$2"
}

# Copy a file to a directory and cd into it
cpcd() {
	cp -- "$1" "$2"
	custom_cd "$2"
}

# Display free disk space
alias df="df -h"

# Find files in current directory
alias fhere="find . -name "

# Python autocorrect
alias py="python3"
alias python=py

# Start ssh-agent
alias sshag="eval \"\$(ssh-agent -s)\""

# List ssh keys in agent
alias sshl="ssh-add -l"

# Remove all ssh keys from agent
alias sshd="ssh-add -D"

# 'cd ..' Shortcuts
alias ..="cd .."
alias cd..=..

# 'cd ~' Shortcuts
alias ~="cd ~"
alias cd~=~

# Clear Screen from CMD
alias cls=clear

# Always run apt-get with sudo
alias apt-get="sudo apt-get"

# Date & Time Shortcuts
alias now="date +'%T'"
alias nowtime=now
alias nowdate="date +'%d-%m-%y'"

# Show active ports
alias ports="netstat -tulanp"

# Add prompt before common operations
alias mv="mv -i"
alias cp="cp -i"
alias ln="ln -i"
alias rm="rm -I --preserve-root"

# Update & Upgrade shortcut
alias update="sudo apt-get update -y && sudo apt-get upgrade -y"

# Get IPs
alias ip_public="curl http://ipecho.net/plain; echo"
alias ip_shared=ip_public
alias ip_local="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ip_private=ip_local

# Copy with progress bar
alias cpv="rsync -ah --info=progress2"

