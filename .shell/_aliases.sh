#-------------------------------------------------------------------------------
# Movement
alias please=sudo														# First and foremost
alias cp='cp -iv'                           							# Preferred 'cp' implementation
alias mv='mv -iv'                           							# Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     							# Preferred 'mkdir' implementation
alias ll='ls -lhA'                            							# Preferred 'ls' implementation
alias less='less -FSRXc'                    							# Preferred 'less' implementation
alias cd..='cd ../'                         							# Go back 1 directory level
alias .2='cd ../../'                        							# Go back 2 directory levels
alias .3='cd ../../../'                     							# Go back 3 directory levels
alias .4='cd ../../../../'                  							# Go back 4 directory levels
alias .5='cd ../../../../../'               							# Go back 5 directory levels
alias .6='cd ../../../../../../'            							# Go back 6 directory levels
alias ...='cd ../../'                       							# Go back 2 directory levels
alias ....="cd ../../../"   											# Go back 3 directory levels
alias .....="cd ../../../../"											# Go back 4 directory levels
alias ......="cd ../../../../../"										# Go back 5 directory levels
alias f='open -a Finder ./'                 							# f: Opens current directory in MacOS Finder
alias ~="cd ~"                              							# ~: Go Home
alias fs="stat -f \"%z bytes\""											# Gets filesize
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; rm -rfv ~/.Trash"	# Empties trash

#-------------------------------------------------------------------------------
# Git
alias undopush='git push -f origin HEAD^:master'
alias git-tree='git log --graph --full-history --all --color \
        --pretty=format:"%x1b[31m%h%x09%x1b[32m%d%x1b[0m%x20%s"'

#-------------------------------------------------------------------------------
# Editing
alias edit='sublime'
alias vscode='open $@ -a "Visual Studio Code"'
# alias vim="/usr/local/bin/vim"
alias idea='open -a "`ls -dt /Applications/IntelliJ\ IDEA*|head -1`"'

#-------------------------------------------------------------------------------
# Brew
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor'

#-------------------------------------------------------------------------------
# Git --bare dotfiles
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

#-------------------------------------------------------------------------------
# IP Addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en1"
alias ips="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias allmac="ifconfig | grep broadcast | arp -a"

#-------------------------------------------------------------------------------
# Tmux
alias tma='tmux attach -t'
alias tml='tmux list-sessions'
alias tmla='tml'
alias tmks='tmux kill-server'
alias tmka='tmks'
alias tmk='tmux kill-session -t'
