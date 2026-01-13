for pkg in $(cat ./os/lin/asahi/arm64/bash/software.txt); do
  sudo apt install -y $pkg
done
