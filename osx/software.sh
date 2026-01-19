for pkg in $(cat ./osx/software.txt); do
  NONINTERACTIVE=1 brew install $pkg
done
