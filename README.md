# MacBook Backup - Configuration & Settings

This repository contains a backup of important configuration files, aliases, and package lists from my MacBook Air (M1, 2020) before reset.

## System Information

- **Model**: MacBook Air M1 (2020)
- **macOS Version**: 26.3 (Build 25D5087f)
- **Chip**: Apple M1 (8 cores: 4 performance + 4 efficiency)
- **Memory**: 8 GB

## Contents

### 1. Zsh Configuration (`/zsh`)

Contains all shell configuration files:

- `.zshrc` - Main zsh configuration file
- `.p10k.zsh` - Powerlevel10k theme configuration
- `.zsh_aliases/` - Directory containing organized alias files:
  - `directory_aliases.zsh` - Navigation shortcuts (.., ...)
  - `editor_aliases.zsh` - Editor aliases (vim → lvim)
  - `general_aliases.zsh` - Common utilities (c, h, mkd, etc.)
  - `git_aliases.zsh` - Git shortcuts and branch management
  - `listing_aliases.zsh` - File listing shortcuts
  - `project_aliases.zsh` - Project-specific commands
  - `system_aliases.zsh` - System update commands
- `.zsh_scripts/` - Custom shell functions and environment settings:
  - `environment.zsh` - Environment variables and tool configurations
  - `functions.zsh` - Custom shell functions (hs, mkcd, extract, backup, etc.)

### 2. Homebrew Packages (`/brew`)

Contains lists of all installed packages:

- `Brewfile` - Complete Homebrew bundle file (can be used with `brew bundle install`)
- `brew-formulas.txt` - List of all installed formulas
- `brew-casks.txt` - List of all installed casks

### 3. Documentation (`/docs`)

System information and version details:

- `macos-version.txt` - macOS version information
- `system-info.txt` - Hardware specifications

## Restoration Instructions

### Restore Homebrew Packages

```bash
# Install Homebrew first if not installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Navigate to the brew directory
cd brew/

# Install all packages from Brewfile
brew bundle install
```

### Restore Zsh Configuration

```bash
# Navigate to the zsh directory
cd zsh/

# Copy main configuration file
cp .zshrc ~/.zshrc

# Copy Powerlevel10k configuration
cp .p10k.zsh ~/.p10k.zsh

# Copy alias and script directories
cp -r .zsh_aliases ~/.zsh_aliases
cp -r .zsh_scripts ~/.zsh_scripts

# Reload shell configuration
source ~/.zshrc
```

### Additional Setup Steps

1. **Install Oh-My-Zsh**:
   ```bash
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

2. **Install Powerlevel10k** (already in Brewfile):
   ```bash
   brew install powerlevel10k
   ```

3. **Install NVM** (Node Version Manager):
   ```bash
   curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
   ```

4. **Install LunarVim** (referenced in editor aliases):
   ```bash
   LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)
   ```

## Key Aliases Reference

### Navigation
- `..` - Go up one directory
- `...` - Go up two directories

### Git
- `gs` - git status
- `gc` - git commit
- `gp` - git push
- `gco` - git checkout
- `gcb` - git checkout -b
- `pull` - Pull and switch branch with npm install & start
- `clean-branches` - Delete all local branches except main

### General
- `c` - clear
- `h` - history
- `mkd` - mkdir -p
- `update` - Update brew and oh-my-zsh
- `vim` - Opens LunarVim

### Custom Functions
- `mkcd <dir>` - Create directory and cd into it
- `extract <file>` - Extract any archive format
- `backup <file>` - Create .bak copy
- `myip` - Get public IP address
- `serve [port]` - Start HTTP server (default port 8000)
- `trash <file>` - Move to trash instead of delete

## VS Code Extensions

The following VS Code extensions were installed:
- GitHub Copilot
- GitHub Copilot Chat
- Svelte for VS Code
- Preparing (Thomaz)

## Notes

- The mini alias (`ssh alejandroblanco@10.0.0.158`) connects to a local machine
- Python 3.9 site-packages are included in PYTHONPATH
- htop is aliased as the default `top` command
- LunarVim (lvim) is set as the default EDITOR

---

**Backup Created**: January 4, 2026
**Original System**: MacBook Air M1, 8GB RAM, macOS 26.3
