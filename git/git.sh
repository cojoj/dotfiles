#!/usr/bin/env bash

GIT_DIRECTORY=$HOME/.dotfiles/git
SSH_DIRECTORY=$HOME/.ssh

# Config global git user
echo -e "Please, enter your git username: "
read USER
git config --global user.name $USER
echo -e "Please, enter your git user email address: "
read EMAIL
git config --global user.email $EMAIL

# Credentials helper
git config --global credential.helper osxkeychain

# Global gitignore file
git config --global core.excludesfile ".gitignore_global"
ln -sfhv $GIT_DIRECTORY/.gitignore_global ~

# Genearte SSH key
if [ $(find $SSH_DIRECTORY -maxdepth 0 -type d -empty 2>/dev/null) ]; then
    ssh-keygen -t rsa -C $EMAIL
else
    echo -e "There are some SSH keys, so use them!"
fi