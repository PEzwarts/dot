if [[ ! $(uname -a | grep "Debian") ]]; then
  # Neovim
  cp -r ./all/nvim/ ~/.config/

  # Fish
  cp -r ./all/fish/ ~/.config/

  # Rio
  cp -r ./all/rio/ ~/.config/

  # Alacritty
  cp -r ./all/alacritty/ ~/.config/

  # Ranger
  cp -r ./all/ranger/ ~/.config/

  # Hyprland
  cp -r ./all/hypr/ ~/.config/

  cp -r ./all/gtk-3.0/ ~/.config/
  cp -r ./all/gtk-4.0/ ~/.config/

  sudo touch /etc/modprobe.d/hid_apple.conf

  sudo echo "options hid_apple fnmode=2
options hid_apple swap_fn_leftctrl=1
options hid_apple swap_opt_cmd=1
options hid_apple rightalt_as_rightctrl=1
options hid_apple ejectcd_as_delete=1" > /etc/modprobe.d/hid_apple.conf

  ./git.sh

  hyprctl reload
fi

if [[ $(uname -a | grep "Darwin") ]]; then
  # Neovim
  cp -r ./all/nvim/ ~/.config/

  # Fish
  cp -r ./all/fish/ ~/.config/

  # Rio
  cp -r ./all/rio/ ~/.config/

  # Alacritty
  cp -r ./arm/alacritty/ ~/.config/

  # Ranger
  cp -r ./all/ranger/ ~/.config/
fi
