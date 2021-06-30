# zprezto
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
   source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
eval $(/opt/homebrew/bin/brew shellenv)

# The next line updates PATH for the Google Cloud SDK.
if [ -f "${HOME}/google-cloud-sdk/path.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/path.zsh.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "${HOME}/google-cloud-sdk/completion.zsh.inc" ]; then . "${HOME}/google-cloud-sdk/completion.zsh.inc"; fi

# starship
eval "$(starship init zsh)"

export PATH=$HOME/bin:$PATH
export PATH=$PATH:$HOME/shortcuts

# Go 
export GOPATH=$HOME/go
export PATH=$GOPATH/bin:$PATH
export GO1111MODULE=on
export GOSUMDB=off

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
setopt complete_in_word
setopt mark_dirs
setopt list_types
setopt auto_menu

# prompt colors
autoload -Uz colors ; colors
export LSCOLORS=gxfxcxdxbxfgfdabagacad
export LS_COLORS='di=01;33:ln=01;35:so=01;32:ex=01;31:bd=46;33:cd=43;33:su=41;30:sg=46;30:tw=42;30:ow=43;30'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

# alias
alias ij="open -b com.jetbrains.intellij"
