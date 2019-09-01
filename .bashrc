function gpush {
		currbranch=$(git name-rev --name-only HEAD)
		git push origin $currbranch
		}
function gpushf {
                currbranch=$(git name-rev --name-only HEAD)
                git push origin -f $currbranch
                }
alias gco="git checkout"
alias gadd="git add ."
alias gcom="git commit -m"
alias gundo="git reset HEAD~1"
alias gstat="git status"
alias glog="git log"
alias greset1="git reset HEAD~1"
alias ut="python -m unittest -v"
alias gdiff="git diff"
alias gpull="git pull"
alias please="sudo"
alias yeet="echo 'This Bitch Empty'"
alias ah_shit="echo 'here we go again'"
alias think="jp2a ~/think.jpg --grayscale" 
alias stonks="jp2a ~/stonks.jpg"


##############from devin#####################################################
export VISUAL=vim
export EDITOR="$VISUAL" 

# useful functions/aliases
alias ll="ls -la"
repeat(){
    while true; do "$@"; done
}

bell() {
    echo "$@"
    "$@"; echo -e "\a"
}

ring() {
    echo -e "\a"
}

alias grep='grep --color=always'
############################################################################

# store colors
MAGENTA="\[\033[0;35m\]"
YELLOW="\[\033[01;33m\]"
BLUE="\[\033[00;34m\]"
LIGHT_GRAY="\[\033[0;37m\]"
CYAN="\[\033[0;36m\]"
GREEN="\[\033[00;32m\]"
RED="\[\033[0;31m\]"
VIOLET='\[\033[01;35m\]'
 
function color_my_prompt {
    local __user_and_host="$GREEN\u@\h"
    local __cur_location="$BLUE\W"           # capital 'W': current directory, small 'w': full file path
    local __git_branch_color="$GREEN"
    local __prompt_tail="$VIOLET$"
    local __user_input_color="$GREEN"
    local __git_branch='$(__git_ps1)'; 

    # colour branch name depending on state
    if [[ "$(__git_ps1)" =~ "*" ]]; then     # if repository is dirty
        __git_branch_color="$RED"
    elif [[ "$(__git_ps1)" =~ "$" ]]; then   # if there is something stashed
        __git_branch_color="$YELLOW"
    elif [[ "$(__git_ps1)" =~ "%" ]]; then   # if there are only untracked files
        __git_branch_color="$LIGHT_GRAY"
    elif [[ "$(__git_ps1)" =~ "+" ]]; then   # if there are staged files
        __git_branch_color="$CYAN"
    fi

    # Build the PS1 (Prompt String)
    PS1="$__cur_location$__git_branch_color$__git_branch $__prompt_tail$__user_input_color "
}

# configure PROMPT_COMMAND which is executed each time before PS1
export PROMPT_COMMAND=color_my_prompt

# if .git-prompt.sh exists, set options and execute it
if [ -f ~/.git-prompt.sh ]; then
    GIT_PS1_SHOWDIRTYSTATE=true
    GIT_PS1_SHOWSTASHSTATE=true
    GIT_PS1_SHOWUNTRACKEDFILES=true
    GIT_PS1_SHOWUPSTREAM="auto"
    GIT_PS1_HIDE_IF_PWD_IGNORED=true
    GIT_PS1_SHOWCOLORHINTS=true
    . ~/.git-prompt.sh
fi
