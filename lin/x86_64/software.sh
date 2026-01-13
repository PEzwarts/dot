for pkg in $(cat ./lin/x86_64/software.txt); do
  sudo pacman -S --noconfirm $pkg
done
