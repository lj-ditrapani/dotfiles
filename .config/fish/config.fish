fish_vi_key_bindings

alias l='ls -FXC --color'
alias ll='l -Ahl'
alias grep='grep --color=auto'
alias gst='git status -u'
alias vim='hx'
alias calh="ncal -b3"

alias disableLaptopMonitor="swaymsg output eDP-1 disable"
alias enableLaptopMonitor="swaymsg output eDP-1 enable"
alias mirrormonitor="xrandr --output HDMI-0 --same-as DP-2"

alias ssh-agent-start='ssh-agent -c -t 2h > "$XDG_RUNTIME_DIR/ssh-agent.env"'
if test -f "$XDG_RUNTIME_DIR"/ssh-agent.env
    source "$XDG_RUNTIME_DIR/ssh-agent.env"
end
