export HOMEBREW_PREFIX="/usr/local"

eval "$(pyenv init -)"

export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/.poetry/bin:$PATH
export PATH="/usr/local/sbin:$PATH"

cdpath=(.. ~ ~/Documents/Workspaces)

# opam configuration
test -r /Users/damuda/.opam/opam-init/init.zsh && . /Users/damuda/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true