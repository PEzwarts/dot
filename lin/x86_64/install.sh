# install

./lin/x86_64/software.sh

# config

if [[ ! -f ~/Desktop/ ]]; then
  mkdir ~/Desktop/
  mkdir ~/Downloads/
  mkdir ~/Documents/
  mkdir ~/Music/
  mkdir ~/Pictures/
  mkdir ~/Videos/
fi

git clone https://github.com/PEzwarts/wall ~/

sudo systemctl enable --now libvirtd

sudo virsh net-autostart default
sudo virsh net-start default

sudo systemctl enable sddm

sudo usermod -aG kvm $(whoami)
sudo usermod -aG libvirt $(whoami)
sudo usermod -aG input $(whoami)

# shell

if [[ "$(echo $SHELL)" == "/bin/bash" ]]; then
  if [[ $(cat /etc/shells | grep "/usr/bin/fish") ]]; then
    echo /usr/bin/fish | sudo tee -a /etc/shells
  fi

  chsh -s /usr/bin/fish
fi
