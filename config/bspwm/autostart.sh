#!/bin/bash

function run {
	if ! pgrep $1 ;
	then
		$@&
	fi
}


###############
## autostart ##
###############

# Load bitmap fonts
xset fp+ ~/.fonts/misc &

# urxvt daemon
urxvtd -f

# system tray
#pkill stalonetray
#stalonetray &

# network applet
nm-applet &

# clipboard manager
pkill clipit
clipit &

# volume icon
#pkill volumeicon
#volumeicon &

# keybind daemon
pkill sxhkd
sxhkd &

## music 
mpd &

## reload the xsettingsd, a minimal x settings daemon
#pkill xsettingsd
#xsettingsd &

## set the wallpaper
#feh --bg-fill ~/.wallpaper.jpg

## load dunst
#pkill dunst
#dunst &

## reload the cursor theme
xsetroot -cursor_name left_ptr &

## load panel script
#pkill panel-bspwm
#panel-bspwm &

## or polybar?
killall -q polybar 
polybar -r main &

#compton
pkill picom 
picom --config ~/.config/picom/picom.conf -b &

#pywal
wal -R &

#wmname start for jdownlader
#wmname LG3D &

#xfce power manager
#xfce4-power-manager &

#blueman-applet
blueman-applet &

#wmname für jdownloader
wmname compiz &

#remove inactive mouse cursor
unclutter &