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
brew install --cask monitorcontrol #https://github.com/MonitorControl/MonitorControl

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

mkdir ~/.config/valet/templates
curl curl -s https://raw.githubusercontent.com/devanoxLtd/mac-setup/main/templates/404.html > ~/.config/valet/templates/404.html


# Install GPG on macOS using Homebrew
brew install gpg
brew install gnupg

# Generate a new GPG key pair
gpg --full-generate-key

# List all GPG keys (public and secret)
gpg --list-keys
gpg --list-secret-keys --keyid-format=long

# Export your public GPG key (replace KEY_ID with your actual key ID)
gpg --armor --export KEY_ID

# # Export your private GPG key (replace KEY_ID with your actual key ID)
# gpg --armor --export-secret-key KEY_ID > private-key.asc

# # Import a GPG key from a file
# gpg --import public-key.asc

# # Configure Git to use GPG for signing commits
# git config --global user.signingkey KEY_ID
# git config --global commit.gpgsign true

# # Sign a Git commit manually
# git commit -S -m "Your commit message"

# # Export GPG_TTY environment variable (add to ~/.zshrc or ~/.bash_profile)
# export GPG_TTY=$(tty)

# # Test GPG signing
# echo "test" | gpg --clearsign

# # Start the GPG agent (if not running)
# gpgconf --launch gpg-agent

# # Kill the GPG agent
# gpgconf --kill gpg-agent

# # Edit a GPG key (useful for adding email, changing expiration)
# gpg --edit-key KEY_ID

# # Delete a public key
# gpg --delete-key KEY_ID

# # Delete a secret key
# gpg --delete-secret-key KEY_ID

# # Set trust level for a key
# gpg --edit-key KEY_ID
# # Then type: trust, select level, quit

# # Backup your GPG keys
# gpg --export --armor KEY_ID > public-key.asc
# gpg --export-secret-keys --armor KEY_ID > private-key.asc
# gpg --export-secret-subkeys --armor KEY_ID > subkeys.asc

# # Configure GPG agent cache timeout (add to ~/.gnupg/gpg-agent.conf)
# # default-cache-ttl 600
# # max-cache-ttl 7200

# # Reload GPG agent configuration
# gpgconf --reload gpg-agent

# # Verify a signed commit
# git verify-commit COMMIT_HASH

# # Show fingerprint of a key
# gpg --fingerprint KEY_ID
