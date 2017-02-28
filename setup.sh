#!/bin/sh

yum install -y zsh
wget --no-check-certificate http://install.ohmyz.sh -O - | sh

DOT_FILES=".gitconfig .gitignore .vim .vimrc"

for file in ${DOT_FILES}
do
  ln -s ${HOME}/dotfiles/${file} ${HOME}
done

rm -f ~/.zshrc
ln -s ${HOME}/dotfiles/.zshrc ${HOME}

mkdir -p ~/.vim/bundle
git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
git clone https://github.com/Shougo/vimproc ~/.vim/bundle/vimproc
vim -c ':NeoBundleInstall'
