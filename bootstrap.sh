#!/usr/bin/env bash

DOTFILES_ROOT=$HOME/.dotfiles

echo "Do you want to install or update?"
select ANSWER in "Install" "Update"; do
    case $ANSWER in
        Install ) 
			install
        	break;;
        Update )  
			update
			break;;
		* ) 
			echo "Dunno this command..."
			break;;
    esac
done

function install() {
	# Sync with Github repo
	git fetch origin
	git pull origin master

	# Install Homebrew
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	# Tap Brewfile and install packages
	brew tap homebrew/bundle
	cd homebrew/
	brew bundle
	cd $DOTFILES_ROOT

	# Download and install Oh-My-Zsh
	wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh

	# ZSH syntax highlight plugin
	cd $HOME/.oh-my-zsh/custom/plugins
	git clone git://github.com/zsh-users/zsh-syntax-highlighting.git tmp && mv tmp zsh-syntax-highlighting
	cd $DOTFILES_ROOT

	# Change shell to ZSH
	chsh -s /bin/zsh

	# Link .zshrc files
	ln -sfhv $DOTFILES_ROOT/zsh/.zshrc ~
	source $HOME/.zshrc

	# Install casks
	cd homebrew/
	brew bundle --file=Caskfile
	cd $DOTFILES_ROOT

	# Configure Sublime Text
	source $DOTFILES_ROOT/sublime/sublime.sh

	#Configure git
	source $DOTFILES_ROOT/git/git.sh

	# Configure OS X
	source $DOTFILES_ROOT/osx/osx.sh
}

function update() {
	# Update App Store apps
	sudo softwareupdate -iva

	# Update Homebrew (Cask) & packages
	brew update
	brew upgrade --all
	brew cleanup --force -s && rm -rf $(brew --cache)

	# Update Ruby & gems
	gem update —system
	gem update
	gem cleanup
}