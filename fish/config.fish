alias sd sudo

alias mkd mkdir
alias rmd "rm -r"

alias mk touch

alias ps "pacman -Ss"
alias pi "pacman -S"
alias pu "pacmab -Syu"

alias ys "yay -Ss"
alias yi "yay -S"

alias cla "wc -l ./**"
alias cl "wc -l"
alias d "dysk -a"
alias c clear
alias x "hyprctl dispatch killactive"
# alias x exit

alias b bat
alias ff fastfetch
alias f fd
alias i "./install.sh"
alias u "./update.sh"

alias s "exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink"

alias s1 "exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink -TL 2"
alias s2 "exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink -TL 3"
alias s3 "exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink -TL 4"
alias s4 "exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink -TL 5"
alias s5 "exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink -TL 6"
alias s6 "exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink -TL 7"
alias s7 "exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink -TL 8"
alias s8 "exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink -TL 9"
alias s9 "exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink -TL 10"

# function s
#     if count $argv >/dev/null
#         exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink -TL $argv
#     else
#         exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink
#     end
# end

# alias v "neovide --fork; disown; exit"

alias cb "cargo build"
alias cbr "cargo build --release"

alias cr "cargo run"
alias crr "cargo run --release"
alias cc "cargo clean"

alias cn "cargo new"
alias ca "cargo add"
alias crm "cargo remove"

alias r "xmake && xmake r"

function m
    if [ -f ./xmake.lua ]
        xmake project -k compile_commands
        xmake $argv
    end
end

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
alias gd "git diff"
alias gl "git log --graph --oneline --decorate"

alias gco "git checkout"

alias gta "git worktree add"
alias gtr "git worktree remove"
alias gtl "git worktree list"

alias grma "git remote add"
alias grmr "git remote remove"

function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) -1) ../)
end

abbr --add dotdot --regex '^\.\.+$' --function multicd

# source ~/venv/bin/activate.fish

export PKG_CONFIG_PATH=/usr/lib/pkgconfig
export EDITOR=nvim
