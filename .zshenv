if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export PATH=$PATH:/usr/local/go/bin


alias docker-compose="/usr/libexec/docker/cli-plugins/docker-compose"
alias dc="/usr/libexec/docker/cli-plugins/docker-compose"

alias emacs="emacs -nw"

export GPG_TTY=$(tty)


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


__conda_setup="$('/home/samer/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/samer/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/samer/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/samer/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

neofetch
