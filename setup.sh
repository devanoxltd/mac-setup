#!/bin/bash

curl curl -s https://raw.githubusercontent.com/devanoxLtd/mac-setup/main/zprofile > ~/.zprofile

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

# Install brew packages
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask ngrok
brew install --cask warp


brew install git
brew install wget
brew install php
brew install composer
brew install node

brew install mysql
brew services start mysql

brew tap nicoverbruggen/homebrew-cask

brew install --cask phpmon
brew install --cask vlc
brew install --cask firefox

brew install bruno
brew install --cask pearcleaner # https://github.com/alienator88/Pearcleaner
brew install --cask hiddenbar # https://github.com/dwarvesf/hidden
brew install --cask slack
brew install --cask postman
brew install --cask docker
brew install --cask minisim # https://github.com/okwasniewski/MiniSim
brew install --cask pika # https://github.com/superhighfives/pika
brew install stats # https://github.com/exelban/stats
brew install --cask beekeeper-studio # https://github.com/beekeeper-studio/beekeeper-studio
brew install maccy # https://github.com/p0deje/Maccy
brew install --cask tomatobar # https://github.com/ivoronin/TomatoBar
brew install --cask keepingyouawake # https://github.com/newmarcel/KeepingYouAwake
brew install --cask keka # https://www.keka.io/en/ # https://github.com/aonez/Keka?tab=readme-ov-file

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