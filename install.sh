if [[ $(uname -a | grep "Debian") ]]; then
  ./arm/shell/software.sh
  ./arm/shell/update.sh
else
  if [[ -f /usr/bin/hyprctl ]]; then
    if [[ ! -f ~/Desktop/ ]]; then
      mkdir ~/Desktop/
      mkdir ~/Downloads/
      mkdir ~/Documents/
      mkdir ~/Music/
      mkdir ~/Pictures/
      mkdir ~/Videos/
    fi

    ./x86/shell/software.sh
    ./x86/shell/update.sh

    sudo usermod -aG kvm $(whoami)
    sudo usermod -aG libvirt $(whoami)
    sudo usermod -aG input $(whoami)
  fi
fi

if [[ $(uname -a | grep "Debian") ]]; then
  ./osx/shell/software.sh
  ./osx/shell/update.sh
fi
