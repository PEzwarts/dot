for pkg in $(cat ./arm/sh/software.txt); do
  sudo apt install -y $pkg
done
