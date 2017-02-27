#!/bin/sh

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

brew install wget
brew install git
brew install tig
brew install ag

brew install rbenv
brew install ruby-build
