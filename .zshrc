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
export WORDCHARS=""
zstyle ":completion:*" matcher-list "m:{[:lower:][:upper:]}={[:upper:][:lower:]}"
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"

# Plugins
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source <(zoxide init zsh --cmd cd)
source <(fzf --zsh)
source ~/.config/zsh/fzf-tab/fzf-tab.plugin.zsh

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
    1. Transient zsh prompt?
    2. Customize waybar
    3. A script which converts selected text between key layouts
    4. Switch git to dnf package when exists
    5. Rofi theme and config- remove description
    6. Hyprland config- monitor = , highres OR highrr, auto, 1
    "

