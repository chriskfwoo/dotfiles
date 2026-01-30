# ------------------------------------------------------------------------------
# Powerlevel10k instant prompt (must be near the top)
# ------------------------------------------------------------------------------
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ------------------------------------------------------------------------------
# PATH
# ------------------------------------------------------------------------------
export PATH="/opt/workbrew/bin:/opt/homebrew/bin:$PATH"

# ------------------------------------------------------------------------------
# Oh My Zsh
# ------------------------------------------------------------------------------
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Load Oh My Zsh only if present (NO echo to avoid instant prompt warning)
if [[ -f "$ZSH/oh-my-zsh.sh" ]]; then
  source "$ZSH/oh-my-zsh.sh"
fi

# ------------------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------------------
alias ez="vim ~/.zshrc"
alias sz="source ~/.zshrc"
alias gl='git log --date=short -15 --pretty="%C(Yellow)%h %x09 %C(reset)%ad %x09 %C(Cyan)%an: %C(reset)%s"'
alias gs="git status"
alias getip='ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk "{print \$2}"'
alias cc="clear"

# ------------------------------------------------------------------------------
# NVM
# ------------------------------------------------------------------------------
export NVM_DIR="$HOME/.nvm"
[[ -s "$NVM_DIR/nvm.sh" ]] && source "$NVM_DIR/nvm.sh"
[[ -s "$NVM_DIR/bash_completion" ]] && source "$NVM_DIR/bash_completion"

# ------------------------------------------------------------------------------
# Powerlevel10k config (keep near the bottom)
# ------------------------------------------------------------------------------
[[ -f "$HOME/.p10k.zsh" ]] && source "$HOME/.p10k.zsh"
