if [[ -f /usr/bin/hyprctl ]]; then

  if [[ ! -f ~/Desktop/ ]]; then
    mkdir ~/Desktop/
    mkdir ~/Downloads/
    mkdir ~/Documents/
    mkdir ~/Music/
    mkdir ~/Pictures/
    mkdir ~/Videos/
  fi

  ./shell/software.sh
  ./shell/update.sh

  sudo usermod -aG kvm $(whoami)
  sudo usermod -aG libvirt $(whoami)
  sudo usermod -aG input $(whoami)
fi
