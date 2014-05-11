#!/usr/bin/env bash

if [ -e $HOME/repo/toolbox ]; then
    rm -rf $HOME/repo/toolbox
fi

mkdir $HOME/repo
cd $HOME/repo

git clone git@github.com:leungwensen/toolbox.git

cd $HOME

ln -s $HOME/repo/toolbox/scripts scripts

ln -s $HOME/repo/toolbox/dotfiles/.vimrc   .vimrc
ln -s $HOME/repo/toolbox/dotfiles/.vimrc.d .vimrc.d

ln -s $HOME/repo/toolbox/dotfiles/.bash_profile   .bash_profile
ln -s $HOME/repo/toolbox/dotfiles/.bash_profile.d .bash_profile.d

ln -s $HOME/repo/toolbox/dotfiles/.vimperatorrc .vimperatorrc

ln -s $HOME/repo/toolbox/dotfiles/.gitignore .gitignore

source $HOME/.bash_profile

