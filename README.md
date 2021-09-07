# Archdots
Primero instalamos todo esto con el pacman
```
sudo pacman -S lightdm lightdm-webkit2-greeter firefox xmonad xmonad-contrib xmobar trayer xdotool xorg git base-devel pacman-contrib brightnessctl pamixer upower xorg-xinit thunar feh alacritty neofetch rofi which

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
