alias sd sudo
alias mkd mkdir
alias mk touch

export EDITOR=neovide

alias c clear
alias x exit

alias v "neovide --fork; disown; exit"

alias cb "cargo build"
alias cbr "cargo build --release"
alias ccb "cargo clean && cargo build"
alias ccbr "cargo clean && cargo build --release"

alias cr "cargo run"
alias crr "cargo run --release"
alias ccr "cargo clean && cargo run"
alias ccrr "cargo clean && cargo run --release"
alias cn "cargo new"
alias ca "cargo add"
alias crc "cargo remove"
alias cc "cargo clean"

function m
    make
end

# Useless
alias ga "git add "
alias gaa "git add ."

alias g git
alias gi "git init -b"
alias gc "git clone --bare "
alias grb "git rebase "

alias gf "git fetch "
alias gp "git pull "
alias gP "git push "

alias gcm "git commit -m "
alias gcma "git commit --amend -m "
alias gr "git revert "

# alias gm "git merge "
# alias gs "git switch "
# alias gb "git branch "
# alias gr "git reset "
# alias gR "git restore"

alias gd "git diff"
alias gl "git log --graph --oneline --decorate"

alias gco "git checkout "

alias gb "git branch "
alias gbb "git branch -b "
alias gbd "git branch -d "

alias gta "git worktree add"
alias gtr "git worktree remove"
alias gtl "git worktree list"

alias grma "git remote add "
alias grmr "git remote remove "

# alias ss ""

function s
    if count $argv >/dev/null
        exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink -TL $argv
    else
        exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink
    end
end

function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) -1) ../)
end

abbr --add dotdot --regex '^\.\.+$' --function multicd
