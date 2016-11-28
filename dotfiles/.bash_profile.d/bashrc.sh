#!/usr/bin/env bash

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
export JAVA_HOME=$(/usr/libexec/java_home)
export NVM_DIR="$HOME/.nvm"
export NVM_NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node

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

eval $(thefuck --alias)
