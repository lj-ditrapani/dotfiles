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

export NVM_DIR="$HOME/.nvm"
[ -s "$HOMEBREW_PREFIX/opt/nvm/nvm.sh" ] && \. "$HOMEBREW_PREFIX/opt/nvm/nvm.sh"  # This loads nvm

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/.rbenv/bin:$PYENV_ROOT/bin:$HOME/.local/bin:$PATH"
alias pyenvinit='eval "$(pyenv init -)"'
alias opaminit='eval $(opam env)'

export HISTSIZE=50000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
    autoload -Uz compinit
    compinit
fi

eval "$(uv generate-shell-completion zsh)"
