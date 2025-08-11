# Dev
sudo pacman -S --noconfirm ripgrep fzf rustup
rustup install stable

# Neovim
sudo pacman -S --noconfirm neovim
cp -r ./nvim/ ~/.config/

# Zed
# sudo pacman -S --noconfirm zed
# cp -r ./zed/ ~/.config/

# Fish
sudo pacman -S --noconfirm fish eza
cp -r ./fish/ ~/.config/

# Hyprland
cp -r ./hypr ~/.config/

cp -r ./gtk-3.0/ ~/.config/
cp -r ./gtk-4.0/ ~/.config/

if [ ! -f /usr/bin/hyprctl ]; then

  # Hypr
  sudo pacman -S --noconfirm hyprland

  # Core
  sudo pacman -S --noconfirm lxsession pavucontrol

  # Rice
  sudo pacman -S --noconfirm nwg-panel nwg-look rofi gtklock ly

  if [ ! -f ~/Downloads/ ]; then
    mkdir ~/Desktop/
    mkdir ~/Downloads/
    mkdir ~/Documents/
    mkdir ~/Music/
    mkdir ~/Pictures/
    mkdir ~/Videos/
  fi

  # Extra
  sudo pacman -S --noconfirm rofi waypaper hyprpaper

  # Thunar
  sudo pacman -S --noconfirm thunar gvfs
fi
