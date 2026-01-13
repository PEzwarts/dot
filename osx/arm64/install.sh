# install

if [[ ! -f /opt/homebrew/bin/brew ]]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

./osx/arm64/software.sh

# config

defaults write com.apple.dock persistent-others -array
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.dock recents-apps -array

defaults write com.apple.dock tilesize -int 40
defaults write com.apple.dock orientation -string bottom

declare -a apps=("/opt/homebrew/Cellar/Neovide/0.15.2/Neovide.app" "/Applications/Safari.app")
# declare -a apps=("/Applications/Alacritty.app" "/Applications/Safari.app")

for app in ${apps[@]}; do
  defaults write com.apple.dock persistent-apps -array-add "
  <dict>
    <key>tile-data</key>
    <dict>
      <key>file-data</key>
      <dict>
        <key>_CFURLString</key>
        <string>$app</string>
        <key>_CFURLStringType</key>
        <integer>0</integer>
      </dict>
    </dict>
  </dict>"
done

killall Dock

# shell

if [[ "$(echo $SHELL)" == "/bin/zsh" ]]; then
  if [[ $(cat /etc/shells | grep "/opt/homebrew/bin/fish") ]]; then
    echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
  fi

  chsh -s /opt/homebrew/bin/fish
fi
