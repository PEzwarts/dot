if [[ ! $(uname -a | grep "Debian") ]]; then
  ./lin/x86_64/install.sh
  ./bash/update.sh
fi

if [[ $(uname -a | grep "Darwin") ]]; then
  ./osx/arm64/install.sh
  ./bash/update.sh
fi
