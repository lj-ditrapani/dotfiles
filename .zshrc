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

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$HOME/.rbenv/bin:$PYENV_ROOT/bin:/usr/local/go/bin:$HOME/go/bin/:$HOME/.local/bin:$PATH"
alias pyenvinit='eval "$(pyenv init -)"'
alias opaminit='eval $(opam env)'

export HISTSIZE=50000
export SAVEHIST=$HISTSIZE
setopt EXTENDED_HISTORY

swup() {
    eval $(ssh-agent)
    sway
}

alias disableLaptopMonitor="swaymsg output eDP-1 disable"
alias enableLaptopMonitor="swaymsg output eDP-1 enable"
alias mirrormonitor="xrandr --output HDMI-0 --same-as DP-2"

# Using an external monitor
# swaymsg -t get_outputs
# swaymsg output eDP-1 disable

alias ssh-agent-start='ssh-agent -t 3h > "$XDG_RUNTIME_DIR/ssh-agent.env"'
if [ -f $XDG_RUNTIME_DIR/ssh-agent.env ]; then
    source "$XDG_RUNTIME_DIR/ssh-agent.env" >/dev/null
fi

# alias copyemail='cat ~/statflo/notes/email.txt | wl-copy'
alias copyemail='cat ~/statflo/notes/email.txt | xsel -ib'

export JAVA_HOME_08=~/.sdkman/candidates/java/8.0.292-zulu
export JAVA_HOME_10=~/.sdkman/candidates/java/10.0.2-open
export JAVA_HOME_11=~/.sdkman/candidates/java/11.0.11-zulu
export JAVA_HOME_12=~/.sdkman/candidates/java/12.0.2-open
export JAVA_HOME_13=~/.sdkman/candidates/java/13.0.2.j9-adpt
export JAVA_HOME_14=~/.sdkman/candidates/java/14.0.2.j9-adpt
export JAVA_HOME_16=~/.sdkman/candidates/java/16.0.0.fx-zulu
export JAVA_HOME_18=~/.sdkman/candidates/java/18.0.2-tem

export SPRING_PROFILES_ACTIVE=local
