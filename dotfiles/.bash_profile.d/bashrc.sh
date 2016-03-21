export EDITOR=vim
export NVM_DIR=$HOME/.nvm

LOCAL=/usr/local
pathdirs=(
    $HOME/perl5/lib
    $HOME/scripts
    $HOME/sofa
    $LOCAL/bin
    $LOCAL/sbin
)
for dir in ${pathdirs[@]}; do
    if [ -d $dir ]; then
        # echo $dir
        PATH=$PATH:$dir
    fi
done

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
