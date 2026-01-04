# Git Shortcuts
alias gc='git commit'
alias gcb='git checkout -b'
alias gco='git checkout'
alias gp='git push'
alias gs='git status'

# Git Branch Management
alias pull='f() { git pull && git checkout "$1" && git pull && npm install && npm start; }; f'
alias clean-branches='git branch | grep -v "main" | xargs git branch -D'

# Remove all local and remote branches except main
alias clean-all-branches='f() {
  git fetch --prune && \
  git branch | grep -v "main" | xargs git branch -D && \
  gh api repos/:owner/:repo/branches --paginate | jq -r ".[].name" | grep -v "main" | xargs -I {} gh api -X DELETE repos/:owner/:repo/git/refs/heads/{};
}; f'
