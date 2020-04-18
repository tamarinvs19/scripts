#!/bin/bash

cp ~/.config/i3/config i3/config || echo "Can not copy i3 config"
cp -r ~/.config/i3blocks ./ || echo "Can not copy i3blocks config"
cp ~/.config/termite/config termite/config || echo "Can not copy termite config"
cp -r ~/.vim/UltiSnips ./ || echo "Can not copy UltiSnips config"
cp ~/.vimrc vim/vimrc || echo "Can not copy vim config"
cp ~/.config/xkb/stru xkbcomp/stru || echo "Can not copy xkbcomp config"
cp ~/.zshrc zsh/zshrc || echo "Can not copy zsh config"
