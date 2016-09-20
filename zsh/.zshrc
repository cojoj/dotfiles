# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="honukai"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=1

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git z brew brew-cask bundler compleat forklift gem git-extras github osx pod rails ruby sublime zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/bin:/usr/local/opt/ruby/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"

# Swift
export PATH=/Library/Developer/Toolchains/swift-latest.xctoolchain/usr/bin:"${PATH}"
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# Set default location for homebrew-cask apps
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/opt/homebrew-cask/Caskroom"
fpath=(/usr/local/share/zsh-completions $fpath)

# Set Sublime Text as defulat editor for ZSH
export EDITOR='subl'

# Load environmental variables with credentials
# source $HOME/.credentials

source $ZSH/oh-my-zsh.sh
