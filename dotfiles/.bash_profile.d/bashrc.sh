#!/usr/bin/env bash

# paths
LOCAL=/usr/local
PATH_DIRS=(
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
)
for src in ${sources[@]}; do
    if [ -s $src ]; then
        # echo $src
        source $src
    else
        echo $src not found
    fi
done

# export PYENV_ROOT="$HOME/.pyenv"
# export PATH="$PYENV_ROOT/bin:$PATH"
# eval "$(pyenv init -)"

export JAVA_HOME=$(/usr/libexec/java_home)

eval $(thefuck --alias)
