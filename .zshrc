# Powerlevel10k instant prompt
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
 # source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# Powerlevel10k Prompt
#source ~/.config/zsh/powerlevel10k/powerlevel10k.zsh-theme
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#source ~/.config/zsh/powerlevel10k/.p10k.zsh

# Prompt
source ~/.config/zsh/prompt

# Cursor
source ~/.config/zsh/cursor

# Aliases
source ~/.config/zsh/aliases

# Bindings
source ~/.config/zsh/bindings

# Setup
autoload -U compinit && compinit
setopt AUTO_CD
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"

# Plugins
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.config/zsh/fzf/fzf.zsh
source ~/.config/zsh/fzf-tab/fzf-tab.plugin.zsh
eval "$(zoxide init zsh --cmd cd)"

# History
HISTSIZE=10000
HISTFILE=~/.config/zsh/history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_find_no_dups
setopt hist_ignore_space

export TODO="
	1. transient zsh prompt
	2. waybar setup
	3. nvim setup
	"

