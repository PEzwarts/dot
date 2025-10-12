if [[ -f /usr/bin/hyprctl ]]; then
  # Github
  sudo pacman -S --noconfirm github-cli

  # Debug
  sudo pacman -S --noconfirm valgrind

  # Neovim
  sudo pacman -S --noconfirm neovim neovide luarocks alacritty

  # Rust
  sudo pacman -S --noconfirm rustup
  rustup install stable

  # Python
  sudo pacman -S --noconfirm python pipx

  # C/C++
  sudo pacman -S cmake
  pipx install cmake-init

  fish_add_path ~/.local/bin/
  fish_add_path ~/.cargo/bin/

  # Hypr
  sudo pacman -S --noconfirm hyprland gtklock ly wev

  # Core
  sudo pacman -S --noconfirm lxsession pavucontrol

  # Rice
  sudo pacman -S --noconfirm nwg-panel rofi waypaper swaybg grim

  if [[ ! -f ~/Desktop/ ]]; then
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
  sudo pacman -S --noconfirm libreoffice-fresh anki

  ./update.sh

  sudo usermod -aG kvm $(whoami)
  sudo usermod -aG libvirt $(whoami)
  sudo usermod -aG input $(whoami)
fi
