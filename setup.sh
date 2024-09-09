#!/bin/bash

curl curl -s https://raw.githubusercontent.com/devanoxLtd/mac-setup/main/zprofile > ~/.zprofile

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install brew packages
brew install --cask google-chrome
brew install --cask vlc
brew install --cask visual-studio-code
brew install --cask ngrok
brew install --cask firefox
brew install --cask warp

brew install bruno

brew install git

# set git config
git config --global user.name "Mr Chetan"
git config --global user.email "contact@mrchetan.com"

brew install wget
brew install curl
brew install php
brew install composer
brew install node

brew install mysql
brew services start mysql

brew tap nicoverbruggen/homebrew-cask

brew install --cask phpmon

# Install composer packages
composer global require mrchetan/php_standard
ln -s .composer/vendor/mrchetan/php_standard/ ~/php_standard

composer global require laravel/installer

composer global require devanoxltd/valet

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# Replace zshrc file
# zshrc file is located at ~/.zshrc
curl curl -s https://raw.githubusercontent.com/devanoxLtd/mac-setup/main/zshrc > ~/.zshrc

# reload zshrc file
source ~/.zshrc

# valet install
valet install

curl curl -s https://raw.githubusercontent.com/devanoxLtd/mac-setup/main/templates/404.html > ~/.config/valet/templates/404.html