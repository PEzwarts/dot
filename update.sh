# Neovim
cp -r ./nvim/ ~/.config/

# Zed. Not needed.
# sudo pacman -S --noconfirm zed
# cp -r ./zed/ ~/.config/

# Fish
sudo pacman -S --noconfirm fish
cp -r ./fish/ ~/.config/

# Hyprland
cp -r ./hypr/ ~/.config/

cp -r ./gtk-3.0/ ~/.config/
cp -r ./gtk-4.0/ ~/.config/

# Kitty
cp -r ./kitty/ ~/.config/

# Alacritty. Faster but no cursor anitmation. Alacritty devs refused to add it as an feature.
# cp -r ./alacritty/ ~/.config/

hyprctl reload
