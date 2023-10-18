####ALIAS####

#Force rm interactive mode
alias rm="rm -i"
#Force rg case insensitive search
alias rg="rg -i"
#Lock the screen
alias afk="osascript -e 'tell application \"System Events\" to keystroke \"q\" using {command down,control down}'"
#Shortcut for my work folder
alias cdw="cd ~/Documents/projects"
#Prefer lsd binary over ls
alias ls="lsd"
#ls with more options
alias lsa="lsd -larth"
#ls in a full tree form!
alias lst="lsd --tree"
#Force nvim instead of vim
alias vim="nvim"
#shortcuts custom commands
alias ffl="fetchfromlive"
alias sshl="sshtolive"
alias dbi="importdb"
alias dbe="exportdb"
alias user="ddev craft users/create --admin=1 --email=tje@tje.tje --password=FakePassword12!@ --interactive=0"
alias redo="ddev stop -aRO && ddev start && dbi && ddev craft up && user"
