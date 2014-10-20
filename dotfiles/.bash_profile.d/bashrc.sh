
export CLOUDENGINE_HOME=/usr/local/cloudengine/cloudengine-3.1.7
export CLOUDENGINE_PATH=$CLOUDENGINE_HOME/bin
export EDITOR=vim
export GOROOT=/usr/local/Cellar/go/1.3.2
export GOPATH=$HOME/gorepo
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
export M2=$M2_HOME/bin
export M2_HOME=/usr/local/apache-maven/apache-maven-3.0.5
export NODE_PATH=/usr/local/lib/node_modules
export SHELL=zsh

LOCAL=/usr/local
pathdirs=(
    $CLOUDENGINE_PATH
    $HOME/.cabal/bin
    $HOME/.rvm/bin
    $HOME/java/play-2.1.1
    $HOME/perl5/lib
    $HOME/scripts
    $LOCAL/bin
    $LOCAL/go/bin
    $LOCAL/mysql/bin
    $LOCAL/pgsql/bin
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
    $HOME/.pythonbrew/etc/bashrc
    $HOME/.rvm/scripts/rvm
    $HOME/.spm_completion
    $HOME/.travis/travis.sh
    $HOME/perl5/perlbrew/etc/bashrc
)
for src in ${sources[@]}; do
    if [ -s $src ]; then
        # echo $src
        . $src
    fi
done

eval "$(pyenv init -)" # yes, pyenv is noisy

