if [[ ! $(uname -a | grep "Debian") ]]; then
  if [[ ! -f /usr/bin/hyprctl ]]; then
    sudo pacman -S --noconfirm hyprland
  fi

  if [[ ! -f ~/Desktop/ ]]; then
    mkdir ~/Desktop/
    mkdir ~/Downloads/
    mkdir ~/Documents/
    mkdir ~/Music/
    mkdir ~/Pictures/
    mkdir ~/Videos/
  fi

  git clone https://github.com/PEzwarts/wall ~/

  ./os/lin/arch/x86_64/bash/software.sh
  ./os/lin/arch/x86_64/bash/shell.sh
  ./update.sh

  sudo systemctl enable --now libvirtd

  sudo virsh net-autostart default
  sudo virsh net-start default

  sudo systemctl enable sddm

  sudo usermod -aG kvm $(whoami)
  sudo usermod -aG libvirt $(whoami)
  sudo usermod -aG input $(whoami)
fi

if [[ $(uname -a | grep "Darwin") ]]; then
  if [[ ! -f /opt/homebrew/bin/brew ]]; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  fi

  ./os/osx/arm64/bash/software.sh
  ./os/osx/arm64/bash/shell.sh
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
