# .bashrc



# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# 限制资源使用
ulimit -c 102400  # core dump
ulimit -s 65536      # stack size
ulimit -l unlimited  # locked memory
ulimit -n 100001     # open files (已经够用)

# User specific aliases and functions
log() {
    local fname=${BASH_SOURCE[1]##*/}
    echo -e "$(date '+%Y-%m-%dT%H:%M:%S') (${fname}:${BASH_LINENO[0]}:${FUNCNAME[1]}) $*"
}

alias l='ls -lah'
alias la='ls -lAh'
alias vi='nvim'
alias mywork='cd ~/workspace'
# Docker alias
alias dimg='docker images -a'
alias dpsa='docker ps -a'
alias dlog='docker logs'
alias dexec='docker exec -it'
alias dstop='docker stop'
alias dstart='docker start'
alias drst='docker restart'
alias drm='docker rm'
alias drmi='docker rmi'

myip=""
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

PS1="\[\e[32m\][\u@\[\e[36m\]$myip \[\e[32m\]\W]\[\033[33m\]\$(parse_git_branch) \[\e[32m\]\$\[\e[0m\] "
# 高亮PS1
# PS1="\[\e[1;32m\][\u@\[\e[1;36m\]$myip \[\e[1;32m\]\W]\[\033[1;33m\]\$(parse_git_branch) \[\e[1;32m\]\$\[\e[0m\] "