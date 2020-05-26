#!/bin/bash

cp ~/.config/i3/config i3/config || echo "Can not copy i3 config"
cp -r ~/.config/i3blocks ./ || echo "Can not copy i3blocks config"
cp ~/.config/termite/config termite/config || echo "Can not copy termite config"
cp -r ~/.vim/UltiSnips ./ || echo "Can not copy UltiSnips config"
cp ~/.vimrc vim/vimrc || echo "Can not copy vim config"
cp ~/.vim/plugged/vim-airline-themes/autoload/airline/themes/raven_blue.vim vim/raven_blue.vim || echo "Can not copy vim-airline-theme"
cp ~/.config/xkbcomp/stru xkbcomp/stru || echo "Can not copy xkbcomp config"
cp ~/.zshrc zsh/zshrc || echo "Can not copy zsh config"
cp ~/.oh-my-zsh/custom/themes/green.zsh-theme zsh/green.zsh-theme || echo "Can not copy oh-my-zsh config"
cp ~/.config/rofi/config rofi/config || echo "Can not copy rofi config"

