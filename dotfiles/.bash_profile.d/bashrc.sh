
export EDITOR=vim
export NODE_PATH=/usr/local/lib/node_modules
export NVM_DIR=~/.nvm
# export SHELL=bash

LOCAL=/usr/local
pathdirs=(
    $CLOUDENGINE_PATH
    $HOME/perl5/lib
    $HOME/scripts
    $LOCAL/bin
    $LOCAL/sbin
    $LOCAL/share/npm/bin
    $GOROOT/bin
    $M2
)
for dir in ${pathdirs[@]}; do
    if [ -d $dir ]; then
        # echo $dir
        PATH=$PATH:$dir
    fi
done

sources=(
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

source $(brew --prefix nvm)/nvm.sh

