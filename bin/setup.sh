#!/usr/bin/env bash

# homebrew {
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# }
# oh my zsh {
    curl -L http://install.ohmyz.sh | sh
# }
# apps {
    brew install vim
    brew install node
    brew install git
# }
# toolbox {
    # get the source {
        if [ -e $HOME/repo/toolbox ]; then
            rm -rf $HOME/repo/toolbox
        fi

        mkdir $HOME/repo
        cd $HOME/repo
        git clone https://github.com/leungwensen/toolbox.git
    # }
    # link files {
        cd $HOME
        ln -s $HOME/repo/toolbox/scripts scripts # self defined scripts
        links=(
            .vimrc
            .vimrc.d
            .bash_profile
            .bash_profile.d
            .vimperatorrc
            .gitignore
        )
        for link in ${links[@]}; do
            ln -s $HOME/repo/toolbox/dotfiles/$link $link
        done
    # }
    # make the magic happen {
        source $HOME/.bash_profile
    # }
# }

