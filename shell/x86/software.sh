for pkg in $(cat ./shell/x86/software.txt); do
  sudo pacman -S --noconfirm $pkg
done
