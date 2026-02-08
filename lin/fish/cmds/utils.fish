alias sd sudo

alias mk touch
alias mkd mkdir
alias rmd "rm -rf"

alias . "cd .."
alias .. "cd ../.."
alias ... "cd ../../.."

function c
    if [ "$argv[1]" = "" ]
        clear
    else
        cd $argv[1]
    end
end

alias s "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink"

alias 1 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 2"
alias 2 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 3"
alias 3 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 4"
alias 4 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 5"
alias 5 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 6"
alias 6 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 7"
alias 7 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 8"
alias 8 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 9"
alias 9 "eza -lagM --icons --follow-symlinks --show-symlinks --hyperlink -TL 10"

alias ff fd

alias r ranger
alias d "lsblk --fs --all --perms"
alias f fastfetch

function x
    if [ "$(uname)" = Linux ]
        hyprctl dispatch killactive
    else
        if [ $t = 0 ]
            killall $t0
        else
            killall $t1
        end
    end
end

alias cla "wc -l ./**"
alias cl "wc -l"

alias i "/bin/bash ./bash/install.sh"

function hu
  rmd ~/.local/share/nvim/
  /bin/bash ./bash/update.sh
  clear
end

function u
  /bin/bash ./bash/update.sh
  clear
end
