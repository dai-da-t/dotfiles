# History
setopt share_history
setopt histignorealldups
setopt hist_ignore_space
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Auto cd
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

# Completion
setopt auto_param_slash
setopt mark_dirs
setopt auto_menu
setopt menu_complete
setopt auto_param_keys
setopt list_types
setopt magic_equal_subst # --prefix=...
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select interactive

# Brace (e.g. {1-3}) Expantion
setopt brace_ccl

# Notify bg
setopt no_tify

setopt correct
setopt nolistbeep
setopt list_packed

# Color
autoload -Uz colors
colors