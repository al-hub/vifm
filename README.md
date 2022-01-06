# [vifm](https://github.com/vifm/vifm)

This is the custimizing vifm config files for ubundu.

You can install as
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/al-hub/vifm/main/install_vifm.sh)"
```

or clone this repository and use install_vifm.sh

### imgc, imgt  
You can modify to set the image position for your environment.  
edit  
~/.config/vifm/scripts/imgc  
~/.config/vifm/scripts/imgt  
```
FONTH=15 
FONTW=7 
```
[example](https://github.com/al-hub/vifm/commit/354f50c249eb44e13855c7e0c715c6549b253ac8)  

### Results

Here is my screenshot with tmux. : )
![vifmscreenshot](https://raw.githubusercontent.com/al-hub/data/main/img/vifm-screenshot.jpg)

'w' is quick view (as total command in windows)  
And you can folder compare using by " :compare listall " command on vifm.  
![vifmscreenshot-gif](https://raw.githubusercontent.com/al-hub/data/main/img/vifm-screenshot.gif)
