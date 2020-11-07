#!/bin/bash

DOTFILES_DIR=$HOME/dotfiles

cd $DOTFILES_DIR

for f in .??*
do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".gitignore" ]] && continue
  ln -snfv "$DOTFILES_DIR/$f" ~/
done
