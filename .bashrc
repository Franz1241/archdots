#
# ~/.bashrc
#

# Activar vi keybindings
set -o vi
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Alias para cuando conectes el segundo monitor a la izquierda
alias monitorpluged='xrandr --output eDP-1 --primary --below HDMI-1 --mode 1280x720 --pos 0x1080 --output HDMI-1 --mode 2560x1080 --pos 0x0 && feh --no-fehbg --bg-scale '$HOME/Pictures/wallpaper.jpg'&& xdotool key Super+ctrl+r'
# Aliases para la exploración
alias ls='ls --color=auto'
alias l='ls -al --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -a --color=auto'
# Alias weones 
alias nv='nvim'
alias platzi='cd ~/Proyectos_varios/python/intermedio_python' #curso que actualmente llevo en Platzi
# Aliases para las funciones de upgrade de paquetes y para apagar
alias upp='sudo pacman -Syuu'
alias off='shutdown now'

#Alias para las salidas de audio
alias audlap='pactl set-card-profile 0 output:analog-stereo+input:analog-stereo'
alias audmon='pactl set-card-profile 0 output:hdmi-stereo-extra1'

# Alias para activar el entorno virtual de python
alias ave='source ./venv/bin/activate'
alias dve='deactivate'

alias protovpn='sudo openvpn /etc/openvpn/client/nl-free-05.protonvpn.com.udp.ovpn'

# Esto se ejecuta cada que abrimos una terminal
neofetch | lolcat
eval "$(starship init bash)"
PS1='[\u@\h \W]\$ '


