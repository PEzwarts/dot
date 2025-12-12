for pkg in $(cat ./x86/sh/software.txt); do
  # if [[ ! $($pkg | grep "//") ]]; then
  sudo pacman -S --noconfirm $pkg
  # fi
done
