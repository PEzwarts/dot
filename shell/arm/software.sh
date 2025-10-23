for pkg in $(cat ./shell/arm/software.txt); do
  sudo apt install -y $pkg
done
