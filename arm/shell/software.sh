for pkg in $(cat ./arm/shell/software.txt); do
  sudo apt install -y $pkg
done
