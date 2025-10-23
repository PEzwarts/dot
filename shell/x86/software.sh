for pkg in $(cat ./software.txt); do
  sudo pacman -S --noconfirm $pkg
done
