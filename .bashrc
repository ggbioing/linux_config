# .bashrc

export PATH='/usr/local/bin:/usr/bin:/bin:/usr/sbin'
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export HISTFILESIZE=20000
export HISTSIZE=10000
PWD() {
	pwd | awk -F\/ '{print $(NF-1),$(NF)}' | sed 's/ /\//'
}
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
#export PS1="${debian_chroot:+($debian_chroot)}\[\033[01;37m\][\[\033[00;32m\]\D{%H:%M} \[\033[01;36m\]\u\[\033[01;37m\]@\[\033[01;32m\]\h\[\033[00m\] \[\033[01;33m\]\$(PWD)\[\033[01;36m\]\$(parse_git_branch)\[\033[01;37m\]]\[\033[00m\]$ "
export PS1="\[\033[01;37m\][\[\033[00;32m\]\D{%H:%M} \[\033[01;36m\]\u\[\033[01;37m\]@\[\033[01;32m\]\h\[\033[00m\] \[\033[01;33m\]\$(PWD)\[\033[01;36m\]\$(parse_git_branch)\[\033[01;37m\]]\[\033[00m\]$ "

# User specific aliases and functions
if [ -f "${HOME}/.bash_aliases" ]; then
        . ${HOME}/.bash_aliases
fi

# do not escape $ when tabbing on cd
shopt -s direxpand

eval `/usr/bin/dircolors -b ~/.dircolors`

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

