# ifnir-arch-linux-config

### Useful Links
https://elkowar.github.io/eww/  
https://www.makeuseof.com/how-to-install-and-remove-packages-arch-linux/  
https://thatnixguy.github.io/posts/ricing/
https://www.linuxfordevices.com/tutorials/linux/picom

### Configuration of Wayland
https://www.reddit.com/r/archlinux/comments/rz6294/arch_linux_laptop_optimization_guide_for/

### Security
https://wiki.archlinux.org/title/security

### i3

https://i3wm.org/docs/userguide.html#_default_keybindings  

### Akacritty
https://github.com/Ifnir/alacritty-theme 

### Polybar
https://sudacode.com/blog/Polybar-Configuration 

### Fonts
#### Install font
`sudo pacman -S ttf-dejavu`
#### Clear Cache
`fc-cache`

## wallpaper
https://w.wallhaven.cc/full/lq/wallhaven-lqkpx2.jpg
https://w.wallhaven.cc/full/57/wallhaven-5763w1.png

## Bash
Open .bashrc and paste this, then copy my .bash_aliases file to `~/`remember to source ~/.bash_aliases too 
```
if [ -f ~/.bash_aliases ]; then
        ~/.bash_aliases
fi
```

Also ```sudo chmod +x /.bash_aliases```
#### Picom
