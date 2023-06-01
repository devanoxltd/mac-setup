# 🗣 Setup Your mac for laravel development

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
curl -s https://raw.githubusercontent.com/devanoxLtd/mac-setup/main/setup.sh | bash
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
curl curl -s https://raw.githubusercontent.com/devanoxLtd/mac-setup/main/zshrc > ~/.zshrc


##  ⚡ Configure Git Profile 

```sh
git config --global user.name "Mr Chetan"
git config --global user.email "contact@mrchetan.com"
```

##  ⚡ Configure Git Profile For Single Repo

```sh
git config user.name "Mr Chetan"
git config user.email "contact@mrchetan.com"
```
