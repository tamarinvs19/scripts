#!/bin/bash

# Usage: load_dotfiles.sh <path>

cd $1
cp ~/.config/i3/config ./i3/config || echo "Can not copy i3 config"
cp -r ~/.config/i3blocks ./ || echo "Can not copy i3blocks config"
cp ~/.config/termite/config termite/config || echo "Can not copy termite config"
cp -r ~/.vim/UltiSnips ./ || echo "Can not copy UltiSnips config"
cp ~/.vimrc ./vim/vimrc || echo "Can not copy vim config"
cp ~/.config/xkbcomp/stru ./xkbcomp/stru || echo "Can not copy xkbcomp config"
cp ~/.zshrc ./zsh/zshrc || echo "Can not copy zsh config"
cp ~/.oh-my-zsh/custom/themes/green.zsh-theme ./zsh/green.zsh-theme || echo "Can not copy oh-my-zsh config"
cp ~/.config/rofi/config ./rofi/config || echo "Can not copy rofi config"
cp ~/.config/polybar/config ./polybar/config || echo "Can not copy polybar config"
cp ~/.config/inkscape-shortcut-manager/* ./inkscape-shortcut-manager || echo "Can not copy inkscape config"

git pull
git add .
git commit -m "Update $(date)"
git push
