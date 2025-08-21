# Neovim
sudo pacman -S --noconfirm neovim luarocks
cp -r ./nvim/ ~/.config/

# Zed
# sudo pacman -S --noconfirm zed
# cp -r ./zed/ ~/.config/

# Fish
sudo pacman -S --noconfirm fish
cp -r ./fish/ ~/.config/

# Hyprland
cp -r ./hypr ~/.config/

cp -r ./gtk-3.0/ ~/.config/
cp -r ./gtk-4.0/ ~/.config/

# Kitty
cp -r ./kitty/ ~/.config/

# Alacritty. Faster but no cursor anitmation. Alacritty devs refused to add it as an feature.
# cp -r ./alacritty/ ~/.config/

hyprctl reload

if [ ! -f /usr/bin/hyprctl ]; then
  # Github
  sudo pacman -S --noconfirm gh

  # Debug
  sudo pacman -S --noconfirm valgrind

  # Dev
  yay -S --noconfirm conan
  sudo pacman -S --noconfirm ripgrep fzf rustup xmake
  rustup install stable

  # Hypr
  sudo pacman -S --noconfirm hyprland gtklock ly wev

  # Core
  sudo pacman -S --noconfirm lxsession pavucontrol

  # Rice
  sudo pacman -S --noconfirm nwg-panel rofi waypaper swaybg

  if [ ! -f ~/Downloads/ ]; then
    mkdir ~/Desktop/
    mkdir ~/Downloads/
    mkdir ~/Documents/
    mkdir ~/Music/
    mkdir ~/Pictures/
    mkdir ~/Videos/
  fi

  # Extra
  sudo pacman -S --noconfirm grim eza dysk fastfetch

  # Thunar
  sudo pacman -S --noconfirm thunar gvfs

  # Wallpapers
  git clone https://github.com/elementary/wallpapers ~/Downloads/
fi
