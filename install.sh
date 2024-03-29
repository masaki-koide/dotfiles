#!/bin/bash

DOTFILES_DIR=$HOME/dotfiles

if ! xcode-select --print-path &> /dev/null; then
  xcode-select --install
  until xcode-select --print-path &> /dev/null; do
    sleep 5
  done
fi

if [ ! -d $DOTFILES_DIR ]; then
  git clone https://github.com/masaki-koide/dotfiles.git $DOTFILES_DIR
else
  cd $DOTFILES_DIR
  git stash
  git checkout master
  git pull origin master
fi

cd $DOTFILES_DIR

./scripts/deploy.sh

if ! type brew &> /dev/null; then
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
else
  brew update
fi

export HOMEBREW_CASK_OPTS=--appdir=~/Applications
brew bundle

# TODO:Move .gitconfig
git config --global user.name masaki-koide
git config --global user.email ikasama0324@gmail.com
git config --global ghq.root ~/src
