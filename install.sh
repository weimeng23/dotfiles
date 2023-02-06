#!/bin/bash
# File              : install.sh
# Author            : Meng Wei <wmeng94@gmail.com>
# Date              : 06.02.2023
# Last Modified Date: 06.02.2023
# Last Modified By  : Meng Wei <wmeng94@gmail.com>

# vim
if [[ -f ~/.config/nvim/init.vim ]]; then
    if [[ ! -d ~/.config/nvim ]];then
        mkdir -p ~/.config/nvim
    fi
    mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.bak
    cp init.vim ~/.config/nvim/init.vim
else
    if [[ ! -d ~/.config/nvim ]];then
        mkdir -p ~/.config/nvim
    fi
    cp init.vim ~/.config/nvim/init.vim
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
