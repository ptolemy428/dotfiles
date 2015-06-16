#!/bin/bash

dir=$HOME/dotfiles
files=".vimrc .gitignore .gitconfig .vim"

for file in $files; do
  echo "Deleting symlink in home directory."
  rm $HOME/$file
  echo "Creating symlink to $file in home directory."
  ln -s $dir/$file ~/$file
done
