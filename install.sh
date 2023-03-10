#!/bin/bash
# File              : install.sh
# Author            : Meng Wei <wmeng94@gmail.com>
# Date              : 06.02.2023
# Last Modified Date: 06.02.2023
# Last Modified By  : Meng Wei <wmeng94@gmail.com>

# neovim/vim
# for vim, set neovim=0
neovim=1
if [[ $neovim == 1 ]];then
    echo 'set neovim plug'
    curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo 'set neovim plug'
    sed -i "s/\~\/\.config\/nvim/\~\/\.vim/" init.vim
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [[ $neovim == 1 ]];then
    echo 'set neovim config'
    if [[ -f ~/.config/nvim/init.vim ]]; then
        mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak
        cp init.vim ~/.config/nvim/init.vim
    else
        if [[ ! -d ~/.config/nvim ]];then
            mkdir -p ~/.config/nvim
        fi
        cp init.vim ~/.config/nvim/init.vim
    fi
else
    echo 'set vim config'
    if [[ -f ~/.vimrc ]]; then
        mv ~/.vimrc ~/.vimrc.bak
        cp init.vim ~/.vimrc
    else
        cp init.vim ~/.vimrc
    fi
fi

# tmux
if [[ -f ~/.tmux.conf ]]; then
    mv ~/.tmux.conf ~/.tmux.conf.bak
    cp .tmux.conf ~/.tmux.conf
else
    cp .tmux.conf ~/.tmux.conf
fi

# inputrc
if [[ -f ~/.inputrc ]]; then
    mv ~/.inputrc ~/.inputrc.bak
    cp .inputrc ~/.inputrc
else
    cp .inputrc ~/.inputrc
fi

#
