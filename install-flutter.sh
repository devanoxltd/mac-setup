#!/bin/bash

cd ~
mkdir development/sdk
cd development/sdk
git clone https://github.com/flutter/flutter.git -b stable

brew install ruby

source ~/.zshrc

# Install cocoapods for flutter
sudo gem install cocoapods

# run flutter doctor
flutter doctor