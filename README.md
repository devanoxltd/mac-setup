# 🗣 Setup Your mac for laravel and flutter development

### 📝  Install Xcode
```sh
xcode-select --install
```
### 📝  Accept Xcode license
```sh
sudo xcodebuild -license
```

### 📝  Install Homebrew
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 💪 💻 Start Setup Your mac for laravel and flutter development
```sh
curl -s https://raw.githubusercontent.com/devanoxLtd/mac-setup/main/setup.sh | bash
```

### Use brew in current terminal
```sh
eval "$(/opt/homebrew/bin/brew shellenv)"
```
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


## Add VSCode as default editor for all programming languages on macOS
```sh
brew install duti python-yq
curl "https://raw.githubusercontent.com/github/linguist/master/lib/linguist/languages.yml" \
  | yq -r "to_entries | (map(.value.extensions) | flatten) - [null] | unique | .[]" \
  | xargs -L 1 -I "{}" duti -s com.microsoft.VSCode {} all
```