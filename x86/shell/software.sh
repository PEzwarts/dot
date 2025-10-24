for pkg in $(cat ./x86/shell/software.txt); do
  sudo pacman -S --noconfirm $pkg
done
