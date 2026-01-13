for pkg in $(cat ./osx/arm64/software.txt); do
  NONINTERACTIVE=1 brew install $pkg
done
