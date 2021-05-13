
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval $(/opt/homebrew/bin/brew shellenv)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sakura/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sakura/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sakura/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sakura/google-cloud-sdk/completion.zsh.inc'; fi

export PATH=$HOME/bin:$PATH

# Go 
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export GO1111MODULE=on
export GOSUMDB=off

eval "$(starship init zsh)"

HISTFILE=$HOME/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# setopt
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt list_packed
setopt list_types
setopt append_history 
setopt inc_append_history

autoload -U compinit
compinit

zstyle ':completion:*:default' menu select=2
