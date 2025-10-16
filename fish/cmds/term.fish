function v
    if [ "$(uname)" = Linux ]
        $t1 --command nvim -c ":lua vim.g.term = false" & disown

        bash -c "sleep 0.1 && hyprctl dispatch resizeactive -450 0" & disown
        hyprctl dispatch killactive
    else
        killall $t1
        $t1 --command nvim -c ":lua vim.g.term = false" & disown
    end
end

function vb
    if [ "$(uname)" = Linux ]
        $t1 --command nvim -c ":lua vim.g.write = true" & disown

        bash -c "sleep 0.1 && hyprctl dispatch resizeactive -450 0" & disown
        librewolf & disown
        hyprctl dispatch killactive
    else
        killall $t1
        $t1 --command nvim -c ":lua vim.g.write = true" & disown
    end
end

export EDITOR=nvim
