if [ $(uname -a | grep "Debian") ]; then
  ./shell/arm/software.sh
else
  if [ -f /usr/bin/hyprctl ]; then
    if [ ! -f ~/Desktop/ ]; then
      mkdir ~/Desktop/
      mkdir ~/Downloads/
      mkdir ~/Documents/
      mkdir ~/Music/
      mkdir ~/Pictures/
      mkdir ~/Videos/
    fi

    ./shell/x86/software.sh

    sudo usermod -aG kvm $(whoami)
    sudo usermod -aG libvirt $(whoami)
    sudo usermod -aG input $(whoami)
  fi
fi

./shell/update.sh
