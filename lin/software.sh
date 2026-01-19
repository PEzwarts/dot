for pkg in $(cat ./lin/software.txt); do
  sudo pacman -S --noconfirm $pkg
done
