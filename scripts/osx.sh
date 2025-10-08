if [ ! -f /opt/homebrew/bin/brew ]; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install amethyst

# Github
brew install github-cli

# Debug
brew install valgrind

# Dev
brew install neovim neovide luarocks alacritty
brew install rustup xmake python
rustup install stable

# Extra
brew install fish eza dysk fastfetch fd ripgrep fzf ranger

# Wallpapers
git clone https://github.com/PEzwarts/wall ~/Desktop/wall/

# Applications
brew install libreoffice

/Applications/Amethyst.app/Contents/MacOS/Amethyst & disown

../update.sh
