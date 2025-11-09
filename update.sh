if [[ $(uname -a | grep "Darwin") ]]; then
  # Neovim
  cp -r ./all/nvim/ ~/.config/

  # Fish
  cp -r ./all/fish/ ~/.config/

  # Alacritty
  cp -r ./arm/alacritty/ ~/.config/
fi

if [[ $(uname -a | grep "Debian") ]]; then
  # Neovim
  cp -r ./all/nvim/ ~/.config/

  # Fish
  cp -r ./all/fish/ ~/.config/

  # Alacritty
  cp -r ./all/alacritty/ ~/.config/

  # Hyprland
  cp -r ./arm/hypr/ ~/.config/

  cp -r ./all/gtk-3.0/ ~/.config/
  cp -r ./all/gtk-4.0/ ~/.config/

  hyprctl reload
else
  # Neovim
  cp -r ./all/nvim/ ~/.config/

  # Fish
  cp -r ./all/fish/ ~/.config/

  # Alacritty
  cp -r ./all/alacritty/ ~/.config/

  # Hyprland
  cp -r ./all/hypr/ ~/.config/

  cp -r ./all/gtk-3.0/ ~/.config/
  cp -r ./all/gtk-4.0/ ~/.config/

  hyprctl reload
fi
