if [ "$(uname)" == "Linux" ]; then
  # Neovim.
  cp -r ./nvim/ ~/.config/

  # Zed.
  # cp -r ./zed/ ~/.config/

  # Fish.
  cp -r ./fish/ ~/.config/

  # Kitty.
  # cp -r ./kitty/ ~/.config/

  # Alacritty.
  cp -r ./alacritty/ ~/.config/

  # Hyprland
  cp -r ./hypr/ ~/.config/

  cp -r ./gtk-3.0/ ~/.config/
  cp -r ./gtk-4.0/ ~/.config/

  hyprctl reload
else
  rm -r ~/.config/*

  # Neovim.
  cp -r ./nvim/ ~/.config/nvim/

  # Zed.
  # cp -r ./zed/ ~/.config/

  # Fish.
  cp -r ./fish/ ~/.config/fish/

  # Kitty.
  # cp -r ./kitty/ ~/.config/kitty/

  # Alacritty.
  cp -r ./alacritty/ ~/.config/alacritty/

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
fi
