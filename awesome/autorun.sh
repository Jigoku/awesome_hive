#!/usr/bin/env bash

#only run if not running
function run {
    if ! pgrep $1;
    then
        $@&
    fi
}

run xset -dpms
run nvidia-settings -l
run cairo-compmgr
run urxvtd
run unclutter -root
run thunar --daemon
run mpd
run mpdscribble
run nm-applet
run volumeicon
run setxkbmap gb
run start-pulseaudio-x11
run kdeconnectd
run xscreensaver -no-splash

#programs which differ in binary/process name
if ! pgrep redshift;
then
    redshift-gtk &
fi
