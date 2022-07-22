# Use vi bindings
bindkey -v
# Only show last part of path >
export PS1="%1~> "
# Show [user@host] short_path > (for remote servers)
# export PS1="[%n@%m] %1~> "

alias l='ls -FXC --color'
alias ll='l -Ahl'
alias grep='grep --color=auto'
#alias gcrl="sudo loadkeys us"
#alias uiop="sudo loadkeys dvorak"
alias gst='git status -u'
alias vim='nvim'
alias calh="ncal -b3"

bindkey "^R" history-incremental-search-backward

# Turn on and off mouspad
# xinput list  # Get a list of input devices
alias tpoff="synclient TouchpadOff=1"
alias tpon="synclient TouchpadOff=0"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm

export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export PATH="$HOME/.rbenv/bin:$HOME/.pyenv/bin:$PATH:$HOME/bin"
alias pyenvinit='eval "$(pyenv init -)" && eval "$(pyenv virtualenv-init -)"'

export HISTSIZE=50000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

swup() {
    eval $(ssh-agent)
    sway
}

alias disableLaptopMonitor="swaymsg output eDP-1 disable"
alias enableLaptopMonitor="swaymsg output eDP-1 enable"

alias vscode="code --enable-features=UseOzonePlatform --ozone-platform=wayland --log debug"

# Using an external monitor
# swaymsg -t get_outputs
# swaymsg output eDP-1 disable

# Perhaps needed for screen sharing?
export XDG_CURRENT_DESKTOP=sway
