alias bs "brew search"
alias bi "brew install"
alias br "brew remove"
alias bu "brew update && brew upgrade"

alias sd sudo

alias mk touch
alias mkd mkdir
alias rmd "rm -r"

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

alias f fd
alias ct cat
alias r ranger

alias d "dysk -a"
alias ff fastfetch

function x
    if [ "$(uname)" = Linux ]
        hyprctl dispatch killactive
    else
        if [ $t = 0 ]
          killall $t1
        else
          killall $t2
        end
    end
end

# alias x exit

alias cla "wc -l ./**"
alias cl "wc -l"

alias i "./install.sh"
alias u "./update.sh"

set t1 neovide
set t2 alacritty

set t = 0

function v
    if [ "$(uname)" = Linux ]
        if [ $t = 0 ]
          $t1 -- -c ":lua vim.g.term = false" & disown
        else
          $t2 --command nvim -c ":lua vim.g.term = false" & disown
        end

        bash -c "sleep 0.1 && hyprctl dispatch resizeactive 450 0" & disown
        hyprctl dispatch killactive
    else
        if [ $t = 0 ]
          killall $t1
          $t1 -- -c ":lua vim.g.term = false" & disown
        else
          killall $t2
          $t2 --command nvim -c ":lua vim.g.term = false" & disown
        end
    end
end

function vb
    if [ "$(uname)" = Linux ]
        if [ $t = 0 ]
          $t1 -- -c ":lua vim.g.write = true" & disown
        else
          $t2 --command nvim -c ":lua vim.g.write = true" & disown
        end

        bash -c "sleep 0.1 && hyprctl dispatch resizeactive 450 0" & disown
        librewolf & disown
        hyprctl dispatch killactive
    else
        if [ $t = 0 ]
          killall $t1
          $t1 -- -c ":lua vim.g.write = true" & disown
        else
          killall $t2
          $t2 --command nvim -c ":lua vim.g.write = true" & disown
        end
    end
end

alias g git
alias gi "git init -b"

alias gb "git branch"
alias gbb "git branch -b"
alias gbd "git branch -d"

alias gm "git merge"

alias ga "git add"
alias gr "git reset"

alias gcm "git commit -m"
alias gcma "git commit --amend -m"
# alias gr "git revert"

alias gP "git push"
alias gp "git pull"
alias gf "git fetch"

# Rebase dangerous; changes git hashes.
# alias grb "git rebase "

# Unknown havent tried yet.
# alias gs "git switch "
# alias gr "git reset "
# alias gR "git restore"

alias gc "git clone"
alias gd "git diff | cat"
alias gl "git log --graph --oneline --decorate | cat"

alias gco "git checkout"

# alias gta "git worktree add"
# alias gtr "git worktree remove"
# alias gtl "git worktree list"

alias grma "git remote add"
alias grmr "git remote remove"

alias cb "cargo build"
alias cbr "cargo build --release"

alias cr "cargo run"
alias crr "cargo run --release"
alias cc "cargo clean"

alias cn "cargo new"
alias ca "cargo add"
alias crm "cargo remove"

alias mr "xmake && xmake r"

function m
    if [ -f ./xmake.lua ]
        xmake project -k compile_commands
        xmake $argv
    end
end

alias mc "xmake clean"

function mn
    if [ "$argv[2]" = cpp ]
        xmake create -l c++ $argv[1]
        cd $argv[1]
    else
        xmake create -l $argv[2] $argv[1]
        cd $argv[1]
    end
end

alias p python

export PKG_CONFIG_PATH=/usr/lib/pkgconfig
export EDITOR=nvim
