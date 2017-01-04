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

brew install caskroom/cask/brew-cask
brew install homebrew/science/datamash
brew install thoughtbot/formulae/gitsh

brew install ack
brew install atk
brew install autoconf
brew install automake
brew install bash
brew install cairo
brew install chruby
brew install cloc
brew install coreutils
brew install cscope
brew install curl
brew install datamash
brew install dos2unix
brew install emacs
brew install exercism
brew install fontconfig
brew install freetype
brew install gd
brew install gdbm
brew install gdk-pixbuf
brew install gettext
brew install git
brew install gitsh
brew install glib
brew install gmp
brew install --with-default-names gnu-sed
brew install gnuplot
brew install go
brew install gobject-introspection
brew install grc
brew install grep
brew install gtk+
brew install harfbuzz
brew install heroku
brew install heroku-toolbelt
brew install hicolor-icon-theme
brew install icu4c
brew install imagemagick
brew install iperf
brew install jpeg
brew install jq
brew install libevent
brew install libffi
brew install libidn
brew install libpng
brew install libtiff
brew install libtool
brew install libyaml
brew install libzip
brew install lnav
brew install lua
brew install lynx
brew install makedepend
brew install mobile-shell
brew install mysql
brew install nmap
brew install node
brew install oniguruma
brew install openssl
brew install ossp-uuid
brew install pandoc
brew install pango
brew install pcre
brew install perl
brew install pixman
brew install pkg-config
brew install postgresql
brew install protobuf
brew install python
brew install rcm
brew install readline
brew install reattach-to-user-namespace
brew install rsync
brew install ruby
brew install ruby-install
brew install shared-mime-info
brew install spark
brew install sqlite
brew install ssh-copy-id
brew install st
brew install tldr
brew install tmux
brew install tree
brew install vim
brew install webp
brew install wget --enable-iri
brew install xz

brew cask install alfred
brew cask install apptrap
brew cask install java # Required for arduino below
brew cask install arduino
brew cask install carbon-copy-cloner
brew cask install cyberduck
brew cask install dropbox
brew cask install firefox
brew cask install flux
brew cask install google-chrome
brew cask install iterm2
brew cask install jdiskreport
brew cask install karabiner
brew cask install kindle
brew cask install licecap
brew cask install monolingual
brew cask install nvalt
brew cask install paparazzi
brew cask install postico
brew cask install prey # Needs API_KEY env var set
brew cask install qlstephen
brew cask install rowanj-gitx
brew cask install selfcontrol
brew cask install sequel-pro
#brew cask install simplenote – unavailable
brew cask install sitesucker
brew cask install sketchup
brew cask install skype
#brew cask install sparrow – unavailable
brew cask install spectacle
brew cask install spotify
brew cask install steam
brew cask install textmate
brew cask install the-unarchiver
brew cask install transmission
brew cask install tunnelblick
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc
brew cask install wireshark
brew cask install xquartz

brew cleanup
