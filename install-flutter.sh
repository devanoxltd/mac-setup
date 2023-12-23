#!/bin/bash

cd ~
mkdir development/sdk
cd development/sdk
git clone https://github.com/flutter/flutter.git -b stable

# Install cocoapods for flutter
sudo gem install cocoapods