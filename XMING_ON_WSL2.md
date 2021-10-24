Download this on WIndows 
```
https://sourceforge.net/projects/vcxsrv
```

Then run this

```
sudo /etc/init.d/dbus start &> /dev/null
```


And add this to your bashrc

```
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
export LIBGL_ALWAYS_INDIRECT=1
```
Also remember to install the tk python interpreter

```
sudo apt install python3-tk
```

And that should be it. Remember to allow public connections on your firewall config on windows 
