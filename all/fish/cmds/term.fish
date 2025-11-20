function v
    if [ "$(uname)" = Linux ]
        # if [ (hyprctl -j activeworkspace | jq -r '.windows') = 1 ]
        neovide -- -c ":lua vim.g.term = false vim.g.padd = true" & disown
        # else if [ (hyprctl -j activeworkspace | jq -r '.windows') > 1 ]
        #     neovide -- -c ":lua vim.g.term = false vim.g.padd = false" & disown
        # end

        bash -c "sleep 0.1 && hyprctl dispatch resizeactive -450 0" & disown
        hyprctl dispatch killactive
    else
        killall neovide
        neovide -- -c ":lua vim.g.term = false" & disown
    end
end

export EDITOR=nvim
