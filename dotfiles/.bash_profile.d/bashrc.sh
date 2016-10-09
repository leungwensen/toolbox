#!/usr/bin/env bash

# paths
LOCAL=/usr/local
PATH_DIRS=(
    $HOME/perl5/lib
    $HOME/scripts
    $LOCAL/bin
    $LOCAL/sbin
)
for dir in ${PATH_DIRS[@]}; do
    if [ -d $dir ]; then
        # echo $dir
        PATH=$PATH:$dir
    fi
done

export EDITOR=vim
export NVM_DIR="$HOME/.nvm"
sources=(
    $NVM_DIR/nvm.sh
    $HOME/perl5/perlbrew/etc/bashrc
)
for src in ${sources[@]}; do
    if [ -s $src ]; then
        # echo $src
        source $src
    else
        echo $src not found
    fi
done

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="$HOME/Desktop/platform-tools/:$PATH"
eval $(thefuck --alias)
