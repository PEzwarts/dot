if [[ $(uname -a | grep "Debian") ]]; then
  ./arm/sh/software.sh
  ./arm/sh/update.sh
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

    ./x86/sh/software.sh
    ./x86/sh/update.sh

    sudo usermod -aG kvm $(whoami)
    sudo usermod -aG libvirt $(whoami)
    sudo usermod -aG input $(whoami)
  fi
fi

if [[ $(uname -a | grep "Darwin") ]]; then
  # ./osx/sh/software.sh
  # ./osx/sh/update.sh
fi
