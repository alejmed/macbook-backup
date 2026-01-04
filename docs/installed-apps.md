# Installed Applications

## Third-Party Applications (Non-Default macOS Apps)

| Application | Version | Source/Installation Method |
|-------------|---------|----------------------------|
| **Android Studio** | 2025.2 | Homebrew Cask |
| **Brave Browser** | 141.1.83.120 | Direct Download |
| **Cursor** | 2.2.44 | Direct Download |
| **Dynamic Wallpaper** | 24.5 | App Store |
| **Google Chrome** | 143.0.7499.148 | Direct Download |
| **iTerm** | 3.6.6 | Homebrew Cask |
| **Kimberly's Blog** | 1.0.0 | Custom/Local Development |
| **Magnet** | 3.0.7 | App Store |
| **OpenCode** | 1.0.223 | Direct Download |
| **Spotify** | 1.2.68.528 | Direct Download |
| **Visual Studio Code** | 1.104.3 | Homebrew Cask |

## Installation Commands for Restoration

### Homebrew Cask Apps
```bash
# Terminal & Development
brew install --cask iterm2
brew install --cask visual-studio-code
brew install --cask android-studio

# Note: OpenCode is not in Homebrew, download from opencode.ai
```

### Direct Downloads
```bash
# Browsers
# Chrome: https://www.google.com/chrome/
# Brave: https://brave.com/download/

# Development Tools
# Cursor: https://cursor.sh/
# OpenCode: https://opencode.ai/

# Productivity
# Spotify: https://www.spotify.com/us/download/mac/
# Magnet: https://magnet.crowdcafe.com/
# Dynamic Wallpaper: https://apps.apple.com/us/app/dynamic-wallpaper/id6444603031
```

### App Store Apps
```bash
# These need to be installed from App Store
# - Magnet (Window Manager)
# - Dynamic Wallpaper
```

## Notes

- **Kimberly's Blog** appears to be a local development/custom app
- **OpenCode** is not available in Homebrew, must download from opencode.ai
- **Cursor** is a VS Code alternative, download from cursor.sh
- **Brave Browser** and **Chrome** are both installed as browsers
- **Magnet** is a window management tool for better productivity

## Quick Restoration Script

```bash
#!/bin/bash
# Install Homebrew apps first
brew install --cask iterm2 visual-studio-code android-studio

# Manual downloads (open these URLs)
echo "Download these manually:"
echo "- Chrome: https://www.google.com/chrome/"
echo "- Brave: https://brave.com/download/"
echo "- Cursor: https://cursor.sh/"
echo "- OpenCode: https://opencode.ai/"
echo "- Spotify: https://www.spotify.com/us/download/mac/"
echo "- Magnet: https://magnet.crowdcafe.com/"
echo "- Dynamic Wallpaper: https://apps.apple.com/us/app/dynamic-wallpaper/id6444603031"
```