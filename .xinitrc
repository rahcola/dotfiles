if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xset +fp /usr/share/fonts/local
xset fp rehash

xrdb -merge ~/.Xresources

#syndaemon -i 1.5 -K -d
setxkbmap -layout us -variant altgr-intl -option ctrl:nocaps

exec i3
