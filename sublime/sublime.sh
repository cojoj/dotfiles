#!/usr/bin/env bash

SUBLIME_DIR=$HOME/Library/Application\ Support/Sublime\ Text\ 3/

# Download resources, extract and remove
echo "Do you want to download plugins from Dropbox? [Y/n]"
read -e REPLY
if [[ $REPLY =~ ^[Yy]$ ]]; then
    cd $SUBLIME_DIR
	wget https://www.dropbox.com/sh/j4e32n62temz336/AACQH1Ufh9nN2hTPp_4WaBB1a?dl=1 
	mv AACQH1Ufh9nN2hTPp_4WaBB1a?dl=1 Sublime.zip
	unzip -q Sublime.zip
	rm -rf Sublime.zip
	cd $HOME/.dotfiles
else
	echo "Link proper files manually (check README.md)"
fi