# Editor Configurations

## LunarVim (lvim)

### Configuration Files
- `~/.config/lvim/config.lua` - Main LunarVim configuration
- `~/.config/lvim/lazy-lock.json` - Plugin lockfile

### Current Configuration
```lua
-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Example configs: https://github.com/LunarVim/starter.lvim
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
--
lvim.plugins = {
  { "RRethy/vim-illuminate", enabled = false }
}
```

### Installation & Restoration
```bash
# Install LunarVim (if not already installed)
LV_BRANCH='release-1.4/neovim-0.9' bash <(curl -s https://raw.githubusercontent.com/LunarVim/LunarVim/release-1.4/neovim-0.9/utils/installer/install.sh)

# Restore configuration
cp editors/lvim/config.lua ~/.config/lvim/config.lua
cp editors/lvim/lazy-lock.json ~/.config/lvim/lazy-lock.json

# Restart LunarVim to apply changes
```

## Powerlevel10k

### Configuration File
- `~/.p10k.zsh` - Powerlevel10k theme configuration (90KB file)

### Installation & Restoration
```bash
# Powerlevel10k is installed via Homebrew (in Brewfile)
brew install powerlevel10k

# Restore configuration
cp zsh/.p10k.zsh ~/.p10k.zsh

# Reload shell or restart terminal
source ~/.zshrc
```

## Notes

- **Neovim**: No custom configuration found (using default settings)
- **LunarVim**: Minimal configuration with one plugin disabled (vim-illuminate)
- **Powerlevel10k**: Full configuration backed up (includes prompt customization, colors, etc.)
- **Editor Alias**: `vim` command is aliased to `lvim` in `zsh_aliases/editor_aliases.zsh`

## Editor Integration

The shell configuration includes:
- `EDITOR='lvim'` environment variable set in `zsh_scripts/environment.zsh`
- `alias vim="lvim"` in `zsh_aliases/editor_aliases.zsh`