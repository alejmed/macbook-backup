# =============================================================================
# Powerlevel10k Instant Prompt
# =============================================================================
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# =============================================================================
# PATH Configuration
# =============================================================================
export PATH="$HOME/.local/bin:$PATH"
export PATH="/Users/deja/.opencode/bin:$PATH"

# =============================================================================
# Oh-My-Zsh Configuration
# =============================================================================
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME=""
plugins=(git)
source $ZSH/oh-my-zsh.sh

# =============================================================================
# Powerlevel10k Theme
# =============================================================================
source /opt/homebrew/opt/powerlevel10k/share/powerlevel10k/powerlevel10k.zsh-theme
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

# =============================================================================
# Load Custom Aliases and Scripts
# =============================================================================
for config_file in $HOME/.zsh_{aliases,scripts}/*.zsh; do
  [[ -f "$config_file" ]] && source "$config_file"
done

# =============================================================================
# Tool Completions
# =============================================================================
# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/deja/.npm/_npx/6913fdfd1ea7a741/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/deja/.npm/_npx/6913fdfd1ea7a741/node_modules/tabtab/.completions/electron-forge.zsh
alias mini="ssh alejandroblanco@10.0.0.158"
