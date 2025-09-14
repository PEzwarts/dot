if [ -f /usr/bin/hyprctl ]; then
  # Github
  sudo pacman -S --noconfirm github-cli

  # Debug
  sudo pacman -S --noconfirm valgrind

  # Dev
  sudo pacman -S --noconfirm neovim neovide luarocks
  sudo pacman -S --noconfirm rustup xmake python
  rustup install stable

  # Hypr
  sudo pacman -S --noconfirm hyprland gtklock ly wev

  # Core
  sudo pacman -S --noconfirm lxsession pavucontrol

  # Rice
  sudo pacman -S --noconfirm nwg-panel rofi waypaper swaybg grim

  if [ ! -f ~/Desktop/ ]; then
    mkdir ~/Desktop/
    mkdir ~/Downloads/
    mkdir ~/Documents/
    mkdir ~/Music/
    mkdir ~/Pictures/
    mkdir ~/Videos/
  fi

  # Extra
  sudo pacman -S --noconfirm fish eza dysk fastfetch bat fd ripgrep fzf

  # Thunar
  sudo pacman -S --noconfirm thunar gvfs

  # Wallpapers
  git clone https://github.com/elementary/wallpapers ~/Downloads/wallpapers/

  ./update.sh

  sudo usermod -aG kvm $(whoami)
  sudo usermod -aG libvirt $(whoami)
  sudo usermod -aG input $(whoami)
fi
