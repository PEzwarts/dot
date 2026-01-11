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

    sudo touch /etc/modprobe.d/hid_apple.conf

    sudo echo "options hid_apple fnmode=2
options hid_apple swap_fn_leftctrl=1
options hid_apple swap_opt_cmd=1
options hid_apple rightalt_as_rightctrl=1
options hid_apple ejectcd_as_delete=1" > /etc/modprobe.d/hid_apple.conf

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
