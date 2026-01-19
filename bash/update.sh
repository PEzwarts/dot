if [[ ! $(uname -a | grep "Debian") ]]; then
  # Neovim
  cp -r ./lin/nvim/ ~/.config/

  # Fish
  cp -r ./lin/fish/ ~/.config/

  # Rio
  cp -r ./lin/rio/ ~/.config/

  # Alacritty
  cp -r ./lin/alacritty/ ~/.config/

  # Ranger
  cp -r ./lin/ranger/ ~/.config/

  # Hyprland
  cp -r ./lin/hypr/ ~/.config/

  cp -r ./lin/gtk-3.0/ ~/.config/
  cp -r ./lin/gtk-4.0/ ~/.config/

  hyprctl reload
fi

if [[ $(uname -a | grep "Darwin") ]]; then
  # Neovim
  cp -r ./osx/nvim/ ~/.config/

  # Fish
  cp -r ./osx/fish/ ~/.config/

  # Rio
  cp -r ./osx/rio/ ~/.config/

  # Alacritty
  cp -r ./osx/alacritty/ ~/.config/

  # Ranger
  cp -r ./osx/ranger/ ~/.config/
fi
