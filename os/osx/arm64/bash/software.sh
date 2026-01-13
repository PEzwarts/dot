for pkg in $(cat ./os/osx/arm64/bash/software.txt); do
  NONINTERACTIVE=1 brew install $pkg
done
