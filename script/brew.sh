#!/bin/bash

sudo -v # ask for password only at the beginning

if ! [ -x $(which brew) ]
  then
    echo "-----> Cant find brew"
    exit 1
fi

brew update
brew upgrade

brew tap homebrew/dupes
brew tap thoughtbot/formulae
brew tap phinze/cask

brew install ack
brew install automake
brew install caskroom/cask/brew-cask
brew install chruby
brew install cloc
brew install coreutils
brew install homebrew/science/datamash
brew install git
brew install thoughtbot/formulae/gitsh
brew install --with-default-names gnu-sed
brew install gtk+
brew install heroku-toolbelt
brew install imagemagick
brew install iperf
brew install jq
brew install libidn
brew install libyaml
brew install lnav
brew install mobile-shell
brew install mysql
brew install nmap
brew install node
brew install ossp-uuid
brew install postgresql
brew install prey
brew install python
brew install reattach-to-user-namespace
brew install rsync
brew install ruby-install
brew install spark
brew install sqlite
brew install ssh-copy-id
brew install st
brew install tmux
brew install tree
brew install vim
brew install wget --enable-iri

brew cask install alfred
brew cask install apptrap
brew cask install carbon-copy-cloner
brew cask install cyberghost
brew cask install dropbox
brew cask install flux
brew cask install firefox
brew cask install google-chrome
brew cask install iterm2
brew cask install jdiskreport
brew cask install karabiner
brew cask install licecap
brew cask install monolingual
brew cask install nvalt
brew cask install paparazzi
brew cask install postico
brew cask install qlstephen
brew cask install rowanj-gitx
brew cask install sequel-pro
brew cask install selfcontrol
brew cask install sitesucker
brew cask install sketchup
brew cask install skype
brew cask install spectacle
brew cask install spotify
brew cask install textmate
brew cask install the-unarchiver
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc
brew cask install xquartz

brew cleanup
