#!/bin/bash

brew install --cask google-chrome
brew install --cask anydesk
brew install --cask vlc
brew install --cask visual-studio-code
brew install --cask ngrok

brew install git
brew install wget
brew install curl
brew install composer
brew install mysql

brew services start mysql

brew install php

brew tap nicoverbruggen/homebrew-cask

brew install --cask phpmon

composer global require squizlabs/php_codesniffer:dev-master
composer global require mrchetan/php_standard

composer global require laravel/installer

composer global require laravel/valet

valet install


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"