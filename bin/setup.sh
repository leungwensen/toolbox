#!/usr/bin/env bash

# homebrew {
    if ! hash brew 2>/dev/null; then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        echo 'brew founded';
    fi
# }
# # oh my zsh {
#     if ! [ -e ~/.oh-my-zsh ]; then
#         curl -L http://install.ohmyz.sh | sh
#     else
#         echo 'oh-my-zsh founded';
#     fi
# # }
# apps {
    apps=(
        git
        go
        mysql
        nginx
        pyenv
        svn
        the_silver_searcher
        tig
        vim
    )
    brew update
    for app in ${apps[@]}; do
        echo "install $app"
        brew install $app && brew upgrade $app
    done
# }
# languages {
    # nodejs {
        # NVM_VERSION=v0.17.2
        NODE_VERSION=0.11
        if ! hash nvm 2>/dev/null; then
            git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
            source ~/.nvm/nvm.sh
        else
            echo 'nvm founded';
        fi
        nvm install $NODE_VERSION
        nvm use     $NODE_VERSION
        # global node modules {
            node_modules=(
                grunt-cli
                gulp
                jshint
                less
                uglify-js
            )
            for node_module in ${node_modules[@]}; do
                npm install -g $node_module
            done
        # }
    # }
    # perl {
        PERL_VERSION=perl-5.16.0
        if ! hash perlbrew 2>/dev/null; then
            curl -L http://install.perlbrew.pl | bash
        else
            echo 'perlbrew founded';
        fi
        source ~/perl5/perlbrew/etc/bashrc
        perlbrew install $PERL_VERSION
        perlbrew switch  $PERL_VERSION
        # perl cpans {
            if ! hash cpanm 2>/dev/null; then
                curl -L http://cpanmin.us | perl - App::cpanminus
            fi
        # }
    # }
    # python {
        PYTHON2VERSION=2.7.6
        PYTHON3VERSION=3.3.3
        pyenv install $PYTHON2VERSION
        pyenv install $PYTHON3VERSION
        pyenv global  $PYTHON3VERSION $PYTHON2VERSION
    # }
    # ruby {
        RUBY_VERSION=2.1.3
        if ! hash rvm 2>/dev/null; then
            curl -L https://get.rvm.io | bash -s stable --autolibs=enabled --ruby --rails
        else
            echo 'rvm founded';
        fi
        rvm install $RUBY_VERSION
        rvm use     $RUBY_VERSION
        # global gems {
            ruby_gems=(
                tmuxinator
            )
            for ruby_gem in ${ruby_gems[@]}; do
                gem install $ruby_gem
            done
        # }
    # }
    # golang {
    # }
# }
# get repos {
    REPO_DIR=$HOME/repo
    GITHUB_HOST=https://github.com
    # ALIBABA_GITLAB_HOST=http://gitlab.alibaba-inc.com
    repos=(
        $GITHUB_HOST/altercation/ethanschoonover.com.git
        $GITHUB_HOST/leungwensen/js-projects.git
        $GITHUB_HOST/leungwensen/lab.git
        $GITHUB_HOST/leungwensen/leungwensen.com.git
        $GITHUB_HOST/leungwensen/pastry.git
        $GITHUB_HOST/leungwensen/toolbox.git
        $GITHUB_HOST/xumingming/pyscheduler.git
    )
    mkdir $REPO_DIR
    for repo in ${repos[@]}; do
        REPO_NAME=$(echo $repo | sed -n -e 's/^.*\/\(.*\)\.git$/\1/p') # name of repo
        if [ -e $REPO_DIR/$REPO_NAME ]; then
            cd $REPO_DIR/$REPO_NAME
            echo "update $REPO_NAME"
            git pull
        else
            cd $REPO_DIR
            echo "clone $REPO_NAME"
            git clone $repo $REPO_NAME
        fi
    done
# }
# toolbox {
    # link files {
        cd $HOME
        # self defined scripts {
            rm scripts
            ln -s $HOME/repo/toolbox/scripts scripts # self defined scripts
        # }
        # vimrc, bashrc & others {
            links=(
                .bash_profile
                .bash_profile.d
                .gitconfig
                .gitignore
                .tmux.conf
                .vimperatorrc
                .vimrc
                .vimrc.d
            )
            for link in ${links[@]}; do
                rm $link
                ln -s $REPO_DIR/toolbox/dotfiles/$link $link
            done
        # }
    # }
    # make the magic happen {
        source $HOME/.bash_profile
    # }
# }

