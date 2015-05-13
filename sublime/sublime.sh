#!/usr/bin/env bash

SUBLIME_DIR=$HOME/Library/Application\ Support/Sublime\ Text\ 3/

function dropbox_download() {
	wget -q 'https://www.dropbox.com/sh/j4e32n62temz336/AACQH1Ufh9nN2hTPp_4WaBB1a?dl=1'
	mv AACQH1Ufh9nN2hTPp_4WaBB1a?dl=1 Sublime.zip
	unzip -q Sublime.zip

	# Move files to proper directory
	cp -r Installed\ Packages $HOME/Library/Application\ Support/Sublime\ Text\ 3/
	cp -r Packages $HOME/Library/Application\ Support/Sublime\ Text\ 3/

	# Remove temp files
	rm -rf Sublime.zip Installed\ Packages Packages
}

function dropbox_link() {
	ln -sfhv $HOME/Dropbox/Sublime/Installed\ Packages $HOME/Library/Application\ Support/Sublime\ Text\ 3/
	ln -sfhv $HOME/Dropbox/Sublime/Packages $HOME/Library/Application\ Support/Sublime\ Text\ 3/
}

echo -e "SUBLIME TEXT CONFIGS"
echo "Do you want to download or link (You need configured Dropbox app on your machine) from Dropbox?"
select ANSWER in "Download" "Link"; do
    case $ANSWER in
        Download ) 
			dropbox_download
        	break;;
        Dropbox )  
			dropbox_link
			break;;
		* )
			echo -e "Link proper files manually (check README.md)"
			break;;
    esac
done