#!/usr/bin/env bash

GIT_DIRECTORY=$HOME/.dotfiles/git
SSH_DIRECTORY=$HOME/.ssh

# Config global git user
read "USER?Please, enter your git username: "
git config --global user.name $USER
read "EMAIL?Please, enter your git user email address: "
git config --global user.email $EMAIL

# Credentials helper
git config --global credential.helper osxkeychain

# Global gitignore file
git config --global core.excludesfile ".gitignore_global"
ln -sfhv $GIT_DIRECTORY/.gitignore_global $HOME

# Genearte SSH key
if [ $(find $SSH_DIRECTORY -maxdepth 0 -type d -empty 2>/dev/null) ]; then
    ssh-keygen -t rsa -C $EMAIL
else
    echo -e "There are some SSH keys, so use them!"
fi