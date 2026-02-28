# Use vi bindings
bindkey -v
# Only show last part of path >
export PS1="%1~> "

alias l='ls -FXC --color'
alias ll='l -Ahl'
alias grep='grep --color=auto'
alias gst='git status -u'
alias vim='nvim'

bindkey "^R" history-incremental-search-backward

export EDITOR="nvim"

export HISTSIZE=50000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

eval "$(fnm env --shell zsh)"

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

eval "$(uv generate-shell-completion zsh)"
