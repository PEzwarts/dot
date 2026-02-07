alias g git
alias git "git --no-pager"

alias gi "git init -b"

alias gb "git branch"

alias gbl "git branch -a"

function gbl
  git branch -r
  git branch
end

alias gbb "git checkout -b"
alias gbd "git branch -d"

alias gm "git merge"

function gm
  gbl
  gco main
  git merge $argv[1]
end

function ga.
  git diff
  echo ""
  git diff --name-status
  git add .
end

function ga
  git diff
  echo ""
  git diff --name-status
  git add $argv[1]
end

alias gr "git reset"

alias gcm "git commit -m"
alias gcma "git commit --amend -m"

function gcm
  set msg "Update $(basename $(git rev-parse --show-toplevel)); $argv[1]"

  git commit -m $msg
end

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
  git diff
  echo ""
  git diff --name-status
end

function gdf
  git diff --name-status
end

alias gl "git log --graph --oneline --decorate"
alias gt "git tag"

alias gco "git checkout"

alias grma "git remote add"
alias grmr "git remote remove"
