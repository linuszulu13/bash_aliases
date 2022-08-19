# Git aliases
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias pushalias="cp ~/.bash_aliases ~/projects/bash_aliases/.bash_aliases && cd ~/projects/bash_aliases && ga && gc 'Updated .bash_aliases' && gp"

# Edit aliases
alias editalias="sudo vim ~/.bash_aliases"
alias editaliases=editalias

# Load Aliases
alias loadalias="echo 'Custom Aliases Loaded.' && source ~/.bash_aliases"
alias loadaliases=loadalias
alias reloadalias=loadalias
alias reloadaliases=loadalias

# Start password protected VNC server
alias startvnc="x11vnc -rfbauth ~/.vnc/passwd"

# Turn on LubuntuLaptop display
alias display-on="echo 'Switching on LubuntuLaptop display...' && xset -display :0.0 dpms force on"

# Turn off LubuntuLaptop display
alias display-off="echo 'Switching off LubuntuLaptop display...' && xset -display :0.0 dpms force off"

# 'cd ..' Shortcuts
alias ..="cd .."
alias cd..=..

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
alias ip_local="ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1'"
