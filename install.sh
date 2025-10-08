if [ $( $(uname -a) | grep "asahi") ]; then
  ./scripts/arm.sh
else
  ./scripts/lin.sh
fi

if [ $(uname | grep "Darwin") ]; then
  ./scripts/osx.sh
fi
