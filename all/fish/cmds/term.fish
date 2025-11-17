function v
    if [ "$(uname)" = Linux ]
        if [ (hyprctl -j activeworkspace | jq -r '.windows') = 1 ]
            neovide -- -c ":lua vim.g.term = false vim.g.neovide_padding_left = 500 vim.g.neovide_padding_right = 500" & disown
        else if [ (hyprctl -j activeworkspace | jq -r '.windows') > 1 ]
            neovide -- -c ":lua vim.g.term = false vim.g.neovide_padding_left = 0 vim.g.neovide_padding_right = 0" & disown
        end

        bash -c "sleep 0.1 && hyprctl dispatch resizeactive -450 0" & disown
        hyprctl dispatch killactive
    else
        killall neovide
        neovide -- -c ":lua vim.g.term = false" & disown
    end
end

function t
    if [ "$(uname)" = Linux ]
        if [ (hyprctl -j activeworkspace | jq -r '.windows') = 0 ]
            neovide -- -c ":lua vim.cmd(':ToggleTerm') vim.g.neovide_padding_left = 500 vim.g.neovide_padding_right = 500"
        else if [ (hyprctl -j activeworkspace | jq -r '.windows') > 1 ]
            neovide -- -c ":lua vim.cmd(':ToggleTerm') vim.g.neovide_padding_left = 0 vim.g.neovide_padding_right = 0"
        end

        bash -c "sleep 0.1 && hyprctl dispatch resizeactive -450 0" & disown
        hyprctl dispatch killactive
    else
        killall neovide
        neovide -- -c ":lua vim.g.term = false" & disown
    end
end

export EDITOR=nvim
