#!/usr/bin/env bash

# homebrew #############################################################################################################
if ! hash brew 2>/dev/null; then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo 'brew founded';
fi

# apps #################################################################################################################
apps=(
    git
    the_silver_searcher
    thefuck
    vim
)
brew update
for app in ${apps[@]}; do
    echo "install $app"
    brew install $app && brew upgrade $app
done

# vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim


# nodejs ###############################################################################################################
# nvm
if ! hash nvm 2>/dev/null; then
    export NVM_DIR="$HOME/.nvm" && (
        git clone https://github.com/creationix/nvm.git "$NVM_DIR"
        cd "$NVM_DIR"
        git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" origin`
    ) && . "$NVM_DIR/nvm.sh"
else
    echo 'nvm founded';
fi
# node
if ! hash node 2>/dev/null; then
    NODEJS_ORG_MIRROR=https://npm.taobao.org/mirrors/node nvm install node
    nvm use node
else
    echo 'node founded';
fi
# global node modules
global_node_modules=(
    cnpm
    depv
    file-encoder
    gulp
    jshint
    less
    module-path
    uglify-js
    zfinder
)
for node_module in ${global_node_modules[@]}; do
    npm install -g $node_module --registry=https://registry.npm.taobao.org
done
npm install -g tnpm --registry=http://registry.npm.alibaba-inc.com

# perl #################################################################################################################
# PERL_VERSION=perl-5.16.0
# if ! hash perlbrew 2>/dev/null; then
#     curl -L http://install.perlbrew.pl | bash
# else
#     echo 'perlbrew founded';
# fi
# source ~/perl5/perlbrew/etc/bashrc
# perlbrew install $PERL_VERSION
# perlbrew switch $PERL_VERSION
# # perl cpans
# if ! hash cpanm 2>/dev/null; then
#     curl -L http://cpanmin.us | perl - App::cpanminus
# fi

# python ###############################################################################################################
# PYTHON2VERSION=2.7.6
# PYTHON3VERSION=3.3.3
# pyenv install $PYTHON2VERSION
# pyenv install $PYTHON3VERSION
# pyenv global  $PYTHON3VERSION $PYTHON2VERSION

# ruby #################################################################################################################
# RUBY_VERSION=2.1.3
# if ! hash rvm 2>/dev/null; then
#     curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby --rails
# else
#     echo 'rvm founded';
# fi
# rvm install $RUBY_VERSION
# rvm use     $RUBY_VERSION
# global gems
# ruby_gems=(
#     tmuxinator
# )
# for ruby_gem in ${ruby_gems[@]}; do
#     gem install $ruby_gem
# done

# golang ###############################################################################################################

# repos ################################################################################################################
# repo home
USERNAME=leungwensen
REPO_DIR=$HOME/repos
mkdir $REPO_DIR
# github
GITHUB_SSH=git@github.com:
GITHUB_PERSONAL_REPOS=(
    toolbox
)
for repo in ${GITHUB_SSH[@]}; do
    REPO_NAME=$repo
    if [ -e $REPO_DIR/$REPO_NAME ]; then
        cd $REPO_DIR/$REPO_NAME
        echo "update $REPO_NAME"
        git pull
    else
        cd $REPO_DIR
        echo "clone $REPO_NAME"
        git clone $GITHUB_SSH$USERNAME/$REPO_NAME.git $REPO_NAME
    fi
done
# gitlab
GITLAB_SSH=git@gitlab.com:
GITLAB_PERSONAL_REPOS=(
    doc
)
for repo in ${GITLAB_PERSONAL_REPOS[@]}; do
    REPO_NAME=$repo
    if [ -e $REPO_DIR/$REPO_NAME ]; then
        cd $REPO_DIR/$REPO_NAME
        echo "update $REPO_NAME"
        git pull
    else
        cd $REPO_DIR
        echo "clone $REPO_NAME"
        git clone $GITLAB_PERSONAL_REPOS$USERNAME/$REPO_NAME.git $REPO_NAME
    fi
done

# toolbox ##############################################################################################################
cd $HOME
# self defined scripts
rm scripts
ln -s $REPO_DIR/toolbox/scripts scripts # self defined scripts
# vimrc, bashrc & others
links=(
    .bash_profile
    .bash_profile.d
    .gitconfig
    .gitignore
    .vimrc
    .vimrc.d
)
for link in ${links[@]}; do
    rm $link
    ln -s $REPO_DIR/toolbox/dotfiles/$link $link
done
# make the magic happen
source $HOME/.bash_profile