#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias monitorpluged='xrandr --output eDP-1 --primary --right-of HDMI-1 --mode 1280x720 --pos 0x1080 --output HDMI-1 --mode 2560x1080 --pos 0x0 && feh --no-fehbg --bg-scale '$HOME/Pictures/wallpaper.jpg'&& xdotool key Super+ctrl+r'
alias ls='ls --color=auto'
alias l='ls -al --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'
alias nv='nvim'
neofetch
PS1='[\u@\h \W]\$ '


