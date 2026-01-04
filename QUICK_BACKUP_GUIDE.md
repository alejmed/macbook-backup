# Quick MacBook Backup Guide for AI

## Single Prompt for AI Agent

```
I need to backup my macbook before resetting it. Please:
1. Back up my shell configuration (.zshrc, aliases, scripts)
2. Export my brew packages (generate Brewfile)
3. Save system information (macOS version, hardware specs)
4. List all third-party applications with versions and installation methods
5. Back up editor configurations (LunarVim, Neovim, Powerlevel10k)
6. Create a GitHub repository with all files and restoration instructions
```

## What Gets Backed Up

| Category | Files | Command |
|----------|-------|---------|
| **Shell Config** | `.zshrc`, `.zsh_aliases/`, `.zsh_scripts/`, `.p10k.zsh` | `cp -r ~/.zshrc ~/.zsh_* /backup/zsh/` |
| **Homebrew** | All packages in Brewfile format | `brew bundle dump --file=Brewfile` |
| **System Info** | macOS version, hardware specs | `sw_vers`, `system_profiler` |
| **Applications** | Third-party apps list + versions | `ls /Applications/`, `mdls` |
| **Editor Configs** | LunarVim, Neovim, Powerlevel10k | `cp -r ~/.config/lvim ~/.config/nvim /backup/editors/` |

## Expected Output

```
backup-repo/
├── README.md           # Full restoration guide
├── zsh/               # All shell configs
├── brew/              # Brewfile + package lists
├── editors/           # Editor configurations
└── docs/              # System info + apps
```

## One-Line Restoration

```bash
# Restore everything
brew bundle install && cp zsh/.zshrc ~/ && cp -r zsh/.zsh_* ~/ && source ~/.zshrc
```

## AI Agent Checklist

- [ ] Copy `~/.zshrc` and related zsh files
- [ ] Run `brew bundle dump --file=Brewfile --force`
- [ ] Capture system info with `sw_vers` and `system_profiler`
- [ ] List third-party apps with versions using `ls /Applications/` and `mdls`
- [ ] Copy editor configs (LunarVim, Neovim, Powerlevel10k)
- [ ] Create README with restoration steps
- [ ] Initialize git repo
- [ ] Create GitHub repo with `gh repo create`
- [ ] Push all files

## Typical Execution Time
~2-3 minutes for complete backup and GitHub push
