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
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source <(fzf --zsh)
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
	1. try nwg-panel
	2. transient zsh prompt
	3. waybar setup
	4. nvim setup
	5. a script which converts selected text between key layouts
	6. builtin fzf complete: FZF_COMPLETION_TRIGGER=''
	7. switch git to dnf package when exists
	"

