for pkg in $(cat ./lin/arm64/software.txt); do
  sudo apt install -y $pkg
done
