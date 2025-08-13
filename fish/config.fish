alias sd sudo
alias mkd mkdir
alias mk touch

function s
    if count $argv >/dev/null
        exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink -TL $argv
    else
        exa -lagohHM --icons --follow-symlinks --show-symlinks --hyperlink
    end
end

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
alias crm "cargo remove"
alias cc "cargo clean"

function m
    if [ -f ./meson.build ]
        if [ -d ../build ]
            meson compile
        else
            cd ./build && meson compile && cd ../
        end
    end

    # Bunch build systems if needed in the future for jobs at different companies.
    if [ -f ./xmake.lua ]
        xmake
    end
end

function mn
    mkdir $argv
    cd $argv
    meson init
    meson setup build
end

alias g git
alias gi "git init -b"

alias gb "git branch "
alias gbb "git branch -b "
alias gbd "git branch -d "

alias gm "git merge "

alias ga "git add "

alias gcm "git commit -m "
alias gcma "git commit --amend -m "
alias gr "git revert "

alias gP "git push "
alias gp "git pull "
alias gf "git fetch "

# alias grb "git rebase "
# alias gs "git switch "
# alias gr "git reset "
# alias gR "git restore"

alias gc "git clone "
alias gd "git diff"
alias gl "git log --graph --oneline --decorate"

alias gco "git checkout "

alias gta "git worktree add"
alias gtr "git worktree remove"
alias gtl "git worktree list"

alias grma "git remote add "
alias grmr "git remote remove "

function multicd
    echo cd (string repeat -n (math (string length -- $argv[1]) -1) ../)
end

abbr --add dotdot --regex '^\.\.+$' --function multicd

export EDITOR=neovide
