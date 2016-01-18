#!/bin/bash

#Set $1 as background
WINDOWMANAGER=GNOME3

case "$WINDOWMANAGER" in
"GNOME")
    # See /home/tenner/src/SyncWall-2.0.0-src/src/SystemIntegration.cpp
    gsettings set org.gnome.desktop.background draw-background true
    gsettings set org.gnome.desktop.background picture-options spanned
    gsettings set org.gnome.desktop.background picture-uri "$1"
    ;;
"GNOME3")
    gsettings set org.mate.background draw-background true
    gsettings set org.mate.background picture-options spanned
    gsettings set org.mate.background picture-filename "$1"
    ;;
esac
