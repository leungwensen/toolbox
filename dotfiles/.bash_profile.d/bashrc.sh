export EDITOR=vim
export NVM_DIR=$HOME/.nvm
export MAVEN_HOME=$HOME/mvn/apache-maven-3.2.2
#export CLOUDENGINE_HOME=$HOME/cloudengine/cloudengine-4.1.4.0

LOCAL=/usr/local
pathdirs=(
    $HOME/perl5/lib
    $HOME/scripts
    $HOME/sofa
    $LOCAL/bin
    $LOCAL/sbin
    $MAVEN_HOME/bin
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

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PATH="$HOME/Desktop/platform-tools/:$PATH"
eval $(thefuck --alias)
