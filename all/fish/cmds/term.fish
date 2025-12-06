function v
    if [ "$(uname)" = Linux ]
        # alacritty -e nvim -c ":lua vim.g.term = false" & disown
        neovide -- -c ":lua vim.g.term = false" & disown
        # ghostty -e nvim -c ":lua vim.g.term = false" & disown

        bash -c "sleep 0.1 && hyprctl dispatch resizeactive -450 0" & disown
        hyprctl dispatch killactive
    else
        killall ghostty
        ghostty -e nvim -c ":lua vim.g.term = false"
    end
end

export EDITOR=nvim
