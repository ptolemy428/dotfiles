#!/usr/bin/env bash

dir=$HOME/dotfiles
files=".vimrc .gitignore .gitconfig .vim"

set -e

#create sym links
for file in $files; do
  echo "Deleting symlink in home directory."
  rm -rf $HOME/$file
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/$file
done

#update vim modules
cd $dir
git submodule init
git submodule update
