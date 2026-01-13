if [[ ! $(uname -a | grep "Debian") ]]; then
  # Neovim
  cp -r ./lin/x86_64/nvim/ ~/.config/

  # Fish
  cp -r ./lin/x86_64/fish/ ~/.config/

  # Rio
  cp -r ./lin/x86_64/rio/ ~/.config/

  # Alacritty
  cp -r ./lin/x86_64/alacritty/ ~/.config/

  # Ranger
  cp -r ./lin/x86_64/ranger/ ~/.config/

  # Hyprland
  cp -r ./lin/x86_64/hypr/ ~/.config/

  cp -r ./lin/x86_64/gtk-3.0/ ~/.config/
  cp -r ./lin/x86_64/gtk-4.0/ ~/.config/

  hyprctl reload
fi

if [[ $(uname -a | grep "Darwin") ]]; then
  # Neovim
  cp -r ./osx/arm64/nvim/ ~/.config/

  # Fish
  cp -r ./osx/arm64/fish/ ~/.config/

  # Rio
  cp -r ./osx/arm64/rio/ ~/.config/

  # Alacritty
  cp -r ./osx/arm64/alacritty/ ~/.config/

  # Ranger
  cp -r ./osx/arm64/ranger/ ~/.config/
fi
