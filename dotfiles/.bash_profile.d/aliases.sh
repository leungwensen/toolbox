
# git
alias ga="git add -A"
alias gd="git diff"
alias gf="git fetch"
alias gi="git commit -v"
alias gl="git pull"
alias gm="git merge"
alias gs="git push"

# paths
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias ..="cd .."
alias ...="cd .. && cd .."

# shortcut
alias g="git"
alias j="jobs"
alias f="fg"
alias v="vim"
alias vi="vim"
alias cp="cp -R"
alias mv="mv -i"
alias ls="ls -lhaG"
alias javac="javac -J-Dfile.encoding=UTF-8 -encoding UTF-8"
alias java="java -Dfile.encoding=UTF-8"

# crontab
alias crontab="VIM_CRONTAB=true crontab"

# alias by function
# function rm () {
#     local path
#     for path in "$@"; do
#         # ignore any arguments
#         if [[ "$path" = -* ]]; then :
#         else
#             local dst=${path##*/}
#             # append the time if necessary
#             while [ -e ~/.Trash/"$dst" ]; do
#                 dst="$dst "$(date +%H-%M-%S)
#             done
#             if [ -e ~/.Trash ]; then :
#             # if ~/.Trash not exist
#             else
#                 mkdir ~/.Trash
#             fi
#             mv "$path" ~/.Trash/"$dst"
#         fi
#     done
# }
