
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export GOPATH=$HOME/gorepo

PATH=$PATH:/usr/local/mysql/bin
PATH=$PATH:/usr/local/pgsql/bin
# PATH=$PATH:/usr/local/php5/bin

PATH=$PATH:/usr/local/share/npm/bin

PATH=$PATH:$HOME/.cabal/bin
PATH=$PATH:$HOME/perl5/lib
# Add RVM to PATH for scripting
PATH=$PATH:$HOME/.rvm/bin

PATH=$PATH:$HOME/java/play-2.1.1

# self define scripts
PATH=$PATH:$HOME/script

source $HOME/.git-completion.bash
source $HOME/perl5/perlbrew/etc/bashrc

[[ -r $HOME/.aliases ]] && source $HOME/.aliases

# Load RVM into a shell session *as a function*
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm

[[ -s "$HOME/.pythonbrew/etc/bashrc" ]] && source "$HOME/.pythonbrew/etc/bashrc"

EDITOR='vim'
export EDITOR

# added by travis gem
source /Users/liangwensen/.travis/travis.sh
