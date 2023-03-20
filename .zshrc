HISTFILE=~/.histfile
HISTSIZE=1000000000
SAVEHIST=1000000000
bindkey -e

# options
unsetopt menu_complete
unsetopt flowcontrol

setopt prompt_subst
setopt always_to_end
setopt append_history
setopt auto_menu
setopt complete_in_word
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

# Load aliases
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

bindkey '^a' beginning-of-line
bindkey '^e' end-of-line

# The following lines were added by compinstall
zstyle :compinstall filename '/home/kevin/.zshrc'
# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

pfetch

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Plugins
source /home/kevin/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/kevin/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/kevin/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source /home/kevin/.config/zsh/zsh-auto-notify/auto-notify.plugin.zsh
source /home/kevin/.config/zsh/zsh-you-should-use/you-should-use.plugin.zsh

# history substring search options
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# auto suggestions tab complete
bindkey '^ ' autosuggest-accept

# tmux things
bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^a "tmux attach-session\n"

# Exports
export PNPM_HOME="/home/kevin/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
export PATH=$PATH:/usr/local/go/bin

alias luamake=/home/kevin/lua-language-server/3rd/luamake/luamake

ZSH_AUTOSUGGEST_STRATEGY=(history completion)

eval "$(starship init zsh)"
