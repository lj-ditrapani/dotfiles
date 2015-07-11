# Use vi bindings
bindkey -v
# Only show last part of path >
export PS1="%1~> "
# Show [user@host] short_path > (for remote servers)
# export PS1="[%n@%m] %1~> "
export TERM=xterm-256color  # For weechat-curses

alias l='ls -FXC --color'
alias ll='l -Ahl'
alias grep='grep --color=auto'
#alias gcrl="sudo loadkeys us"
#alias uiop="sudo loadkeys dvorak"
alias asdf="setxkbmap dvorak"
alias aoeu="setxkbmap us"
alias gst='git status'

# Turn on and off mouspad
# xinput list  # Get a list of input devices
# alias tpoff="synclient TouchpadOff=1"
# alias tpon="synclient TouchpadOff=0"

# SERVER
# html=/usr/share/nginx/html
# nginx_config=/etc/nginx

jp=/home/ljd/usb
ljdpy=${jp}/sw_dev/python
ljdruby=${jp}/sw_dev/ruby
learnruby=${jp}/learn_sw_dev/programmingLanguages/ruby
www_dev=${jp}/sw_dev/www_dev
cal=${jp}/calendar

configFiles=${jp}/user_docs/configFiles
ubuntu15=${jp}/user_docs/ubuntu15.04
mountperm='-o uid=ljd,gid=ljd'
console_16_bit=${jp}/sw_dev/coffeescript/16-bit-computer

starcraft=~/.wine/drive_c/Program\ Files\ \(x86\)/StarCraft
