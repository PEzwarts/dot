if [[ "$(echo $SHELL)" == "/bin/zsh" ]]; then
  if [[ $(cat /etc/shells | grep "/opt/homebrew/bin/fish") ]]; then
    echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
  fi

  chsh -s /opt/homebrew/bin/fish
fi
