# Useful bash aliases
alias cp='cp -ir'
alias rm='rm -ir'
alias ln='ln -i'
alias ls='ls -Fh --color=auto'
alias ll='ls -alFh --color=auto'
alias j='jobs -l'
alias cdp='cd "$(pwd -P)"'
alias gh='history | grep'
alias mnt="mount | awk -F' ' '{ printf \"%s\t%s\n\",\$1,\$3; }' | column -t | egrep ^/dev/ | sort"
alias cpv='rsync -ah --info=progress2'

# Custom bash prompt
export PS1="\n[\t \d] \[\033[01;36m\]\w\n\[\033[01;33m\]\u@\h \[\033[00m\]\s >>> "
