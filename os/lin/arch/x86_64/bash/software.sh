for pkg in $(cat ./os/lin/arch/x86_64/bash/software.txt); do
  sudo pacman -S --noconfirm $pkg
done
