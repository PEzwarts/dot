for pkg in $(cat ./osx/sh/software.txt); do
  NONINTERACTIVE=1 brew install $pkg
done
