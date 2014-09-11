
export CLOUDENGINE_HOME=/usr/local/cloudengine/cloudengine-3.1.7
export CLOUDENGINE_PATH=$CLOUDENGINE_HOME/bin
export EDITOR=vim
export GOPATH=$HOME/gorepo
export M2_HOME=/usr/local/apache-maven/apache-maven-3.0.5
export M2=$M2_HOME/bin
export NODE_PATH=/usr/local/lib/node_modules
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export JAVA_HOME=`/usr/libexec/java_home -v 1.7`

pathdirs=(
    /usr/local/mysql/bin
    /usr/local/pgsql/bin
    /usr/local/share/npm/bin
    $CLOUDENGINE_PATH
    $M2
    $HOME/.cabal/bin
    $HOME/.rvm/bin
    $HOME/java/play-2.1.1
    $HOME/perl5/lib
    $HOME/scripts
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


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
