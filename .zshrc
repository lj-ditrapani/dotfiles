# Use vi bindings
bindkey -v
# Only show last part of path >
export PS1="%1~> "
# Show [user@host] short_path > (for remote servers)
# export PS1="[%n@%m] %1~> "
export SCALA_HOME=~/local/scala
export PATH="$HOME/.rbenv/bin:$PATH:$SCALA_HOME/bin:~/bin"

alias l='ls -FXC --color'
alias ll='l -Ahl'
alias grep='grep --color=auto'
#alias gcrl="sudo loadkeys us"
#alias uiop="sudo loadkeys dvorak"
alias asdf="setxkbmap dvorak"
alias aoeu="setxkbmap us"
alias gst='git status -u'

bindkey "^R" history-incremental-search-backward

# Turn on and off mouspad
# xinput list  # Get a list of input devices
alias tpoff="synclient TouchpadOff=1"
alias tpon="synclient TouchpadOff=0"

# setxkbmap dvorak -option caps:escape
# or
# xmodmap ~/dotfiles/.Xmodmap
