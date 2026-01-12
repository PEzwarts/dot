if [[ ! $(uname -a | grep "Debian") ]]; then
  if [[ -f /usr/bin/hyprctl ]]; then
    if [[ ! -f ~/Desktop/ ]]; then
      mkdir ~/Desktop/
      mkdir ~/Downloads/
      mkdir ~/Documents/
      mkdir ~/Music/
      mkdir ~/Pictures/
      mkdir ~/Videos/
    fi

    git clone https://github.com/PEzwarts/wall ~/

    ./x86/sh/software.sh
    ./x86/sh/fish.sh
    ./update.sh

    sudo systemctl enable --now libvirtd

    virsh net-autostart default
    virsh net-start default

    sudo systemctl enable sddm

    sudo usermod -aG kvm $(whoami)
    sudo usermod -aG libvirt $(whoami)
    sudo usermod -aG input $(whoami)
  fi
fi

if [[ $(uname -a | grep "Darwin") ]]; then
  if [[ ! -f /opt/homebrew/bin/brew ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  ./osx/sh/software.sh
  ./osx/sh/fish.sh
  ./update.sh

  defaults write com.apple.dock persistent-others -array
  defaults write com.apple.dock persistent-apps -array
  defaults write com.apple.dock recents-apps -array

  defaults write com.apple.dock tilesize -int 40
  defaults write com.apple.dock orientation -string bottom

  declare -a apps=("/opt/homebrew/Cellar/Neovide/0.15.2/Neovide.app" "/Applications/Safari.app")
  # declare -a apps=("/Applications/Alacritty.app" "/Applications/Safari.app")

  for app in ${apps[@]}; do
    defaults write com.apple.dock persistent-apps -array-add "
    <dict>
      <key>tile-data</key>
      <dict>
        <key>file-data</key>
        <dict>
          <key>_CFURLString</key>
          <string>$app</string>
          <key>_CFURLStringType</key>
          <integer>0</integer>
        </dict>
      </dict>
    </dict>"
  done

  killall Dock
fi
