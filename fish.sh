if [ "$(uname)" == "linux" ]; then
  if [ "$(echo $SHELL)" == "bash" ]; then
    echo /usr/bin/fish | sudo tee -a /etc/shells

    chsh -s /usr/bin/fish
  fi
else
  if [ "$(echo $SHELL)" == "bash" ]; then
    echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells

    chsh -s /opt/homebrew/bin/fish
  fi
fi
