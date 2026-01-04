# MacBook Backup Instructions for AI Agent

Use these simple instructions to create a complete backup of a macOS system.

## Task Overview
Create a backup of important macOS configuration files and settings, then push to a new GitHub repository.

## Steps to Execute

### 1. Backup Zsh Configuration
```bash
# Copy main zsh files
cp ~/.zshrc /path/to/backup/zsh/.zshrc
cp ~/.p10k.zsh /path/to/backup/zsh/.p10k.zsh 2>/dev/null || true

# Copy alias and script directories if they exist
cp -r ~/.zsh_aliases /path/to/backup/zsh/ 2>/dev/null || true
cp -r ~/.zsh_scripts /path/to/backup/zsh/ 2>/dev/null || true
cp -r ~/.bash_aliases /path/to/backup/zsh/ 2>/dev/null || true
```

### 2. Backup Homebrew Packages
```bash
# Generate Brewfile (single file to restore everything)
brew bundle dump --file=/path/to/backup/brew/Brewfile --force

# Optional: Create separate lists
brew list --formula > /path/to/backup/brew/brew-formulas.txt
brew list --cask > /path/to/backup/brew/brew-casks.txt
```

### 3. Backup System Information
```bash
# macOS version
sw_vers > /path/to/backup/docs/macos-version.txt

# Hardware info
system_profiler SPHardwareDataType > /path/to/backup/docs/system-info.txt
```

### 4. Create README with Restoration Instructions
Include:
- System specs (from system-info.txt)
- Directory structure explanation
- Restoration commands for each component
- List of key aliases and functions
- Additional setup steps (Oh-My-Zsh, NVM, etc.)

### 5. Create GitHub Repository
```bash
cd /path/to/backup
git init
git add .
git commit -m "Initial backup: zsh config, aliases, brew packages, and system info"
gh repo create <repo-name> --public --source=. --description="MacBook backup before reset" --push
```

## Files to Backup

### Essential
- `~/.zshrc` or `~/.bashrc`
- `~/.zsh_aliases/` or `~/.bash_aliases`
- `~/.zsh_scripts/`
- `~/.p10k.zsh` (if using Powerlevel10k)
- Brewfile (generated from `brew bundle dump`)

### Optional but Helpful
- `~/.gitconfig`
- `~/.ssh/config` (but NOT private keys)
- `~/.vimrc` or `~/.config/nvim/`
- VS Code settings: `~/Library/Application Support/Code/User/settings.json`
- Custom scripts from `~/.local/bin` or `~/bin`

## Directory Structure
```
backup-repo/
├── README.md              # Comprehensive restoration guide
├── zsh/                   # Shell configuration
│   ├── .zshrc
│   ├── .p10k.zsh
│   ├── .zsh_aliases/
│   └── .zsh_scripts/
├── brew/                  # Package lists
│   ├── Brewfile
│   ├── brew-formulas.txt
│   └── brew-casks.txt
└── docs/                  # System info
    ├── macos-version.txt
    └── system-info.txt
```

## Quick Restoration Commands

### Restore Homebrew
```bash
brew bundle install --file=brew/Brewfile
```

### Restore Zsh Config
```bash
cp zsh/.zshrc ~/.zshrc
cp zsh/.p10k.zsh ~/.p10k.zsh
cp -r zsh/.zsh_aliases ~/.zsh_aliases
cp -r zsh/.zsh_scripts ~/.zsh_scripts
source ~/.zshrc
```

## Security Notes
- Never backup private keys (`~/.ssh/id_*` private keys)
- Never backup `.env` files with secrets
- Review `.gitconfig` for tokens before committing
- Consider making the repository private if it contains any sensitive paths

## Example Command for AI Agent

**User**: "Back up my MacBook configuration files and create a GitHub repo"

**AI Should**:
1. Create backup directory structure
2. Copy all zsh/bash config files
3. Generate Brewfile with `brew bundle dump`
4. Collect system information
5. Create comprehensive README
6. Initialize git repo and push to GitHub
