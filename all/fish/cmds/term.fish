function v
    if [ "$(uname)" = Linux ]
        alacritty -e nvim -c ":lua vim.g.term = false" & disown
        # neovide -- -c ":lua vim.g.term = false" & disown
        # rio -e nvim -c ":lua vim.g.term = false" & disown

        bash -c "sleep 0.1 && hyprctl dispatch resizeactive -450 0" & disown
        hyprctl dispatch killactive
    else
        killall alacritty
        alacritty -e nvim -c ":lua vim.g.term = false"

        # killall neovide
        # neovide -- -c nvim -c ":lua vim.g.term = false"

        # killall rio
        # rio -e nvim -c ":lua vim.g.term = false"
    end
end

export EDITOR=nvim
