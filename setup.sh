#!/bin/bash


# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install brew packages
brew install --cask google-chrome
brew install --cask anydesk
brew install --cask vlc
brew install --cask visual-studio-code
brew install --cask ngrok
brew install --cask firefox

brew install git
brew install wget
brew install curl
brew install composer
brew install mysql
brew install node

brew services start mysql

brew install php

brew tap nicoverbruggen/homebrew-cask

brew install --cask phpmon

# Install composer packages
composer global require squizlabs/php_codesniffer:dev-master
composer global require mrchetan/php_standard

composer global require laravel/installer

composer global require laravel/valet

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Install Flutter
osascript -e 'tell application "Terminal" to do script "curl -s https://raw.githubusercontent.com/devanoxLtd/mac-setup/main/install-flutter.sh | bash"'

# Replace zshrc file
# zshrc file is located at ~/.zshrc
curl curl -s https://raw.githubusercontent.com/devanoxLtd/mac-setup/main/zshrc > ~/.zshrc

# reload zshrc file
source ~/.zshrc

# valet install
valet install

# set git config
git config --global user.name "Mr Chetan"
git config --global user.email "contact@mrchetan.com"

# run flutter doctor
osascript -e 'tell application "Terminal" to do script "flutter doctor"'
