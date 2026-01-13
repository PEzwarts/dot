if [[ ! $(uname -a | grep "Debian") ]]; then
  # Neovim
  cp -r ./os/lin/arch/x86_64/conf/nvim/ ~/.config/

  # Fish
  cp -r ./os/lin/arch/x86_64/conf/fish/ ~/.config/

  # Rio
  cp -r ./os/lin/arch/x86_64/conf/rio/ ~/.config/

  # Alacritty
  cp -r ./os/lin/arch/x86_64/conf/alacritty/ ~/.config/

  # Ranger
  cp -r ./os/lin/arch/x86_64/conf/ranger/ ~/.config/

  # Hyprland
  cp -r ./os/lin/arch/x86_64/conf/hypr/ ~/.config/

  cp -r ./os/lin/arch/x86_64/conf/gtk-3.0/ ~/.config/
  cp -r ./os/lin/arch/x86_64/conf/gtk-4.0/ ~/.config/

  hyprctl reload
fi

if [[ $(uname -a | grep "Darwin") ]]; then
  # Neovim
  cp -r ./os/osx/arm64/conf/nvim/ ~/.config/

  # Fish
  cp -r ./os/osx/arm64/conf/fish/ ~/.config/

  # Rio
  cp -r ./os/osx/arm64/conf/rio/ ~/.config/

  # Alacritty
  cp -r ./os/osx/arm64/conf/alacritty/ ~/.config/

  # Ranger
  cp -r ./os/osx/arm64/conf/ranger/ ~/.config/
fi
