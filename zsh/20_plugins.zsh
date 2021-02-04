# Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Auto Suggestions
zinit light zsh-users/zsh-autosuggestions

# Completions
zinit ice blockf; zinit light zsh-users/zsh-completions

# Syntax Highlighting
zinit light zdharma/fast-syntax-highlighting

# Multi Word History
zinit light zdharma/history-search-multi-word

# Abbreviation Expansion
zinit light momo-lab/zsh-abbrev-alias

# Enhance cd
zinit light b4b4r07/enhancd

# Emoji Tool
zinit light b4b4r07/emoji-cli

# Notificate Alias
zinit light djui/alias-tips

# Enhance ls
zinit ice pick'k.sh'; zinit light supercrabtree/k