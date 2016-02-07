#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

source ~/.sys_env

setxkbmap -model pc104 -layout us -variant intl

#dropboxd &

# compositing
xcompmgr -c &

# wallpaper
# Use --no-xinerama to treat the whole X display as one screen when setting wallpapers.
#feh --no-xinerama --bg-center /home/rcintra/temp/desert_dumping_my_3840x1080_1200_collection_3840x1080_wallpaper_Wallpaper_3840x1080_www.wallpaperswa.com.jpg
feh --no-xinerama --bg-center /home/rcintra/temp/wallpaper/minimalist_metal_wallpaper__dual_screen_edition__by_malkowitch-d7tyhrb.jpg

exec xmonad
 
