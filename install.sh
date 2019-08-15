#!/bin/sh

REPO_DIR="$( cd "$( dirname "$0" )" && pwd )"

# vim
ln -sf $REPO_DIR/.vimrc ~/.vimrc

# zshrc 
ln -sf $REPO_DIR/.zshrc ~/.zshrc
