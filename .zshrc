# Powerlevel10k
# Instant prompt
# Initialization code that may require console input (password prompts, [y/n], confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/zsh/powerlevel10k/.p10k.zsh ]] || source ~/.config/zsh/powerlevel10k/.p10k.zsh

# Cursor
source ~/.config/zsh/cursor

# Aliases
source ~/.config/zsh/aliases

# Bindings
source ~/.config/zsh/bindings

# Setup
source ~/.config/zsh/setup

# Plugins
source ~/.config/zsh/plugins

