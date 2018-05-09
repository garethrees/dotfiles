    git clone git@github.com:garethrees/dotfiles.git ~/.dotfiles
    # or…
    git clone https://github.com/garethrees/dotfiles.git ~/.dotfiles
    ~/.dotfiles/script/install
    exec $SHELL

    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    vim +PluginInstall +qall
