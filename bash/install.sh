if [[ ! $(uname -a | grep "Debian") ]]; then
  ./lin/install.sh
  ./bash/update.sh
fi

if [[ $(uname -a | grep "Darwin") ]]; then
  ./osx/install.sh
  ./bash/update.sh
fi
