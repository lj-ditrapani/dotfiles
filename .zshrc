# Use vi bindings
bindkey -v
# Only show last part of path >
export PS1="%1~> "
# Show [user@host] short_path > (for remote servers)
# export PS1="[%n@%m] %1~> "
export TERM=xterm-256color  # For weechat-curses
# for racer; rust auto-completer
export RUST_SRC_PATH=~/local/rustc-1.3.0/src
export SCALA_HOME=~/local/scala
export PATH=$PATH:$SCALA_HOME/bin

alias l='ls -FXC --color'
alias ll='l -Ahl'
alias grep='grep --color=auto'
#alias gcrl="sudo loadkeys us"
#alias uiop="sudo loadkeys dvorak"
alias asdf="setxkbmap dvorak"
alias aoeu="setxkbmap us"
alias gst='git status'

bindkey "^R" history-incremental-search-backward

# Turn on and off mouspad
# xinput list  # Get a list of input devices
# alias tpoff="synclient TouchpadOff=1"
# alias tpon="synclient TouchpadOff=0"

# SERVER
# html=/usr/share/nginx/html
# nginx_config=/etc/nginx

jp=/home/ljd/usb

configFiles=${jp}/user_docs/configFiles
mountperm='-o uid=ljd,gid=ljd'
console_16_bit=${jp}/sw_dev/coffeescript/16-bit-computer

starcraft=~/.wine/drive_c/Program\ Files\ \(x86\)/StarCraft
