if [ "$(echo $SHELL)" == "/bin/bash" ]; then
  if [ ! $(cat /etc/shells | grep "/usr/bin/fish") ]; then
    echo /usr/bin/fish | sudo tee -a /etc/shells
  fi

  chsh -s /usr/bin/fish
fi

if [ "$(echo $SHELL)" == "/bin/zsh" ]; then
  if [ $(cat /etc/shells | grep "/opt/homebrew/bin/fish") ]; then
    echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
  fi

  chsh -s /opt/homebrew/bin/fish
fi
