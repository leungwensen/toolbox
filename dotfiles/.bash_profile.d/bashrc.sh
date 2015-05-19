
export EDITOR=vim
export NODE_PATH=/usr/local/lib/node_modules
export NVM_DIR=$HOME/.nvm
# export SHELL=bash

LOCAL=/usr/local
pathdirs=(
    $CLOUDENGINE_PATH
    $GOROOT/bin
    $HOME/perl5/lib
    $HOME/scripts
    $LOCAL/bin
    $LOCAL/sbin
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

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

