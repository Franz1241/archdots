# Archdots
Para conectar una red wifi con el network manager usamos los siguientes comandos 
```
List all available networks
nmcli device wifi list
# Connect to your network
nmcli device wifi connect YOUR_SSID password YOUR_PASSWORD
```
Para crear nuevo usuario no root y poder ponerlo en los grupos clásicos serían los siguientes comandos. También recordar de cambiar el visudo para dar privilegios de root a los usuarios wheel.

```
useradd -m username
passwd username
usermod -aG wheel,video,audio,storage username



visudo
#descomentamos la linea /wheel
```

Primero instalamos todo esto con el pacman
```
sudo pacman -S lightdm lightdm-webkit2-greeter firefox xmonad xmonad-contrib xmobar trayer xdotool xorg git base-devel pacman-contrib brightnessctl pamixer upower xorg-xinit feh alacritty neofetch rofi which scrot redshift pulseaudio

```
Ahora instalaremos el AUR package manager para mejor personalización

```
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R username:username yay-git/
cd yay-git
makepkg -si
yay -S nerd-fonts-ubuntu-mono lightdm-webkit-theme-aether
```
Clonamos y copiamos las config de xmonad y xmobar del repo

```
cd ~
git clone https://github.com/Franz1241/archdots.git
cp -r ~/archdots/.config/xmonad ~/.config
cp -r ~/archdots/.config/xmobar ~/.config
```
Copiamos los .bins que son necesarios para los widgets de la barra

```
cp -r ~/archdots/.local/bin/percentage ~/.local/bin/
cp -r ~/archdots/.local/bin/battery ~/.local/bin/
cp -r ~/archdots/.local/bin/brightness ~/.local/bin/
cp -r ~/archdots/.local/bin/volume ~/.local/bin/
```

Copiamos el .xprofile del repo

```
cp ~/archdots/.xprofile ~/
```
Finalmente compilamos el xmonad con el siguiente comando

```
xmonad --recompile

```

Ahora cambiamos la config del lightdm

```
# /etc/lightdm/lightdm.conf
[Seat:*]
# ...
# Uncomment this line and set this value
greeter-session = lightdm-webkit2-greeter
# ...

# /etc/lightdm/lightdm-webkit2-greeter.conf
[greeter]
# ...
webkit_theme = lightdm-webkit-theme-aether

``` 
Reiniciamos con un reboot y ya debería estar, para cambiar el tema del rofi corremos el comando


``` 
rofi-theme-selector
``` 

Arreglamos algún bug que haya y listo, ya debería estar.


##Nvim

Para esto deberíamos tener el vim y neovim instalados con el pacman
Copiamos la carpeta nvim del archdots repo y hacemos lo siguiente

```
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
nvim
:PlugInstall
```
Y luego seguimos la guía de lsp-config con la instalación del npm y los servers de python html y typescript
