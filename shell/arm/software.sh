for pkg in $(cat ./software.txt); do
  sudo apt install -y $pkg
done
