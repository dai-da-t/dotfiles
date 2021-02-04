bindkey -v
bindkey -M viins '\er' history-incremental-pattern-search-forward
bindkey -M viins '^?'  backward-delete-char
bindkey -M viins '^A'  beginning-of-line
bindkey -M viins '^B'  backward-char
bindkey -M viins '^D'  delete-char-or-list
bindkey -M viins '^E'  end-of-line
bindkey -M viins '^F'  forward-char
bindkey -M viins '^G'  send-break
bindkey -M viins '^H'  backward-delete-char
bindkey -M viins '^K'  kill-line
bindkey -M viins '^N'  down-line-or-history
bindkey -M viins '^P'  up-line-or-history
bindkey -M viins '^R'  history-incremental-pattern-search-backward
bindkey -M viins '^U'  backward-kill-line
bindkey -M viins '^W'  backward-kill-word
bindkey -M viins '^Y'  yank

# cd .. = Shift + Up‘
__call_precmds() {
  type precmd > /dev/null 2>&1 && precmd
  for __pre_func in $precmd_functions; do $__pre_func; done
}

__cd_up()   { builtin cd ..; echo "\r\n"; __call_precmds; zle reset-prompt }
zle -N __cd_up;   bindkey '^[[1;2A' __cd_up


# Smart Insert Last Word (2 words)
autoload -Uz smart-insert-last-word
zle -N insert-last-word smart-insert-last-word
zstyle :insert-last-word match '*([[:alpha:]/\\]?|?[[:alpha:]/\\])*'
bindkey '^]' insert-last-word