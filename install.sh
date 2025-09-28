if [ "$(uname)" == "Linux" ]; then
  if [ -f /usr/bin/hyprctl ]; then
    # Github
    sudo pacman -S --noconfirm github-cli

    # Debug
    sudo pacman -S --noconfirm valgrind

    # Dev
    sudo pacman -S --noconfirm neovim neovide luarocks alacritty
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
    sudo pacman -S --noconfirm fish eza dysk fastfetch fd ripgrep fzf ranger

    # Wallpapers
    git clone https://github.com/elementary/wallpapers ~/Downloads/wallpapers/

    # Applications
    sudo pacman -S --noconfirm libreoffice-fresh anki

    ./update.sh

    sudo usermod -aG kvm $(whoami)
    sudo usermod -aG libvirt $(whoami)
    sudo usermod -aG input $(whoami)
  fi
else
  if [ ! -f /opt/homebrew/bin/brew ]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  # Github
  brew install --noconfirm github-cli

  # Debug
  brew install valgrind

  # Dev
  brew install neovim neovide luarocks alacritty
  brew install rustup xmake python
  rustup install stable

  # Extra
  brew install fish eza dysk fastfetch fd ripgrep fzf ranger

  # Wallpapers
  git clone https://github.com/elementary/wallpapers ~/Downloads/wallpapers/

  # Applications
  brew install libreoffice-fresh anki

  ./update.sh
fi
