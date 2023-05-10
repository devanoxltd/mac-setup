# 🗣 Setup Your mac for laravel and flutter development

### 💪   Follow Below steps

### 📝  Install Xcode
```sh
xcode-select --install
```

### 📝  Install Homebrew
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 💻 Install Apps via script
```sh
curl -s https://raw.githubusercontent.com/devanoxOfficial/mac-setup/main/setup.sh | bash
```

### 💻 Install Flutter
```sh
cd ~
mkdir development/sdk
cd development/sdk
git clone https://github.com/flutter/flutter.git -b stable
``` 

####  💻 Install cocoapods for flutter
```sh
sudo gem install cocoapods
```

####  💻 Install Oh My Zsh auto suggestions

Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

####  💻 Install Oh My Zsh syntax highlighting

Clone this repository into `$ZSH_CUSTOM/plugins` (by default `~/.oh-my-zsh/custom/plugins`)

```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

#### Replace zshrc file
zshrc file is located at `~/.zshrc`

```sh
curl curl -s https://raw.githubusercontent.com/devanoxOfficial/mac-setup/main/zshrc > ~/.zshrc
```

#### run flutter doctor
```sh
flutter doctor
```

##  ⚡ Configure Git Profile 

```sh
git config --global user.name "Mr Chetan"
git config --global user.email "contact@mrchetan.com"
```
