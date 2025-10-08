if [ $(whoami | grep "root") ]; then
  read user
  read passwd

  useradd -m -G users -s /bin/bash $user
  (echo "$passwd"; echo "$passwd") | passwd $user

#   echo "
# Defaults targetpw
# ALL ALL=(ALL:ALL) ALL
#   " > /etc/sudoers

  sed -i "s/# Defaults targetpw/ALL ALL=(ALL:ALL) ALL/g"
  sed -i "s/# ALL ALL=(ALL:ALL) ALL/ALL ALL=(ALL:ALL) ALL/g"

  reboot
fi

if [ -f /usr/bin/hyprctl ]; then
  # Github
  sudo pacman -S --noconfirm github-cli

  # Dev
  sudo pacman -S --noconfirm neovim luarocks alacritty
  sudo pacman -S --noconfirm rustup xmake python
  rustup install stable

  # Hypr
  sudo pacman -S --noconfirm hyprland gtklock ly wev

  # Core
  sudo pacman -S --noconfirm lxsession pavucontrol

  # Rice
  sudo pacman -S --noconfirm nwg-panel rofi swaybg grim

  if [ ! -f ~/Desktop/ ]; then
    mkdir ~/Desktop/
    mkdir ~/Downloads/
    mkdir ~/Documents/
    mkdir ~/Music/
    mkdir ~/Pictures/
    mkdir ~/Videos/
  fi

  # Extra
  sudo pacman -S --noconfirm fish eza dysk fastfetch fd ripgrep fzf ranger

  # Wallpapers
  git clone https://github.com/PEzwarts/wall ~/Desktop/wall/

  # Applications
  sudo pacman -S --noconfirm firefox libreoffice-fresh

  ../update.sh

  sed -i "s/set t 0/set t 1/g" ~/.config/fish/config.fish
fi
