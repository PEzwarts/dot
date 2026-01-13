alias g git
alias gi "git init -b"

alias gb "git branch"
alias gbl "git branch -a"
alias gbb "git checkout -b"
alias gbd "git branch -d"

alias gm "git merge"

function ga.
  git diff | bat --pager=none
  git diff --name-status | bat --pager=none
  git add .
end

function ga
  git diff | bat --pager=none
  git diff --name-status | bat --pager=none
  git add $argv[1]
end

alias gr "git reset"

alias gcm "git commit -m"
alias gcma "git commit --amend -m"
# alias gr "git revert"

alias gph "git reset --hard HEAD && git pull"
alias gp "git pull"

alias gP "git push"
alias gf "git fetch"
alias gft "git fetch --tags"

# Rebase dangerous; changes git hashes.
# alias grb "git rebase"

# Unknown havent tried yet.
# alias gs "git switch "
# alias gr "git reset "
# alias gR "git restore"
# alias gta "git worktree add"
# alias gtr "git worktree remove"
# alias gtl "git worktree list"

function gc
  git clone https://github.com/$argv[1]/$argv[2].git
end

function gd
  git diff | bat --pager=none
  git diff --name-status | bat --pager=none
end

alias gl "git log --graph --oneline --decorate | bat --pager=none"
alias gt "git tag | bat --no-pager"

alias gco "git checkout"

alias grma "git remote add"
alias grmr "git remote remove"
