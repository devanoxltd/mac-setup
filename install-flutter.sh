#!/bin/bash

cd ~
mkdir development/sdk
cd development/sdk
git clone https://github.com/flutter/flutter.git -b stable

brew install ruby

source ~/.zshrc

# Install cocoapods for flutter
sudo gem install cocoapods

# Open android studio and install command line tools from the SDK manager

# run flutter doctor
flutter doctor

# Accept licenses
flutter doctor --android-licenses

# recheck flutter doctor
flutter doctor