#!/bin/bash

sudo -v # ask for password only at the beginning

if ! [ -x $(which brew) ]
  then
    echo "-----> Cant find brew"
    exit 1
fi

brew update
brew upgrade

brew tap thoughtbot/formulae
brew tap phinze/cask

brew install brew-cask
brew install datamash
# brew install elixir
# brew install erlang
brew install git
brew install gitsh
brew install imagemagick
# brew install mysql
brew install openssl
brew install rcm
# brew install rbenv
brew install readline
brew install reattach-to-user-namespace
# brew install ruby-build
# brew install sqlite
brew install tmux
brew install tree
brew install vim
brew install wget --enable-iri

brew cask install alfred
brew cask alfred link
brew cask install dropbox
brew cask install firefox
brew cask install f-lux
brew cask install gitx-rowanj
brew cask install google-chrome
brew cask install iterm2
brew cask install jdiskreport
brew cask install monolingual
brew cask install nvalt
brew cask install paparazzi
brew cask install sequel-pro
brew cask install skype
brew cask install spectacle
brew cask install spotify
brew cask install textmate
brew cask install the-unarchiver
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

brew cleanup
