#!/bin/bash
# This script downloads a picture from $FEED_URL, and stores it in $PICTURE_PATH
# overwriting any previous image there. It also stores an image with the date to $STORAGE_FOLDER.
# (c) Dirk Boonzajer
# can be used in conjunction with mate and CRON to update the desktop background every N minutes.

function set_background() {
	case "$WINDOWMANAGER" in
	"GNOME")
	    # See /home/tenner/src/SyncWall-2.0.0-src/src/SystemIntegration.cpp
	    gsettings set org.gnome.desktop.background draw-background true
	    gsettings set org.gnome.desktop.background picture-options spanned
	    gsettings set org.gnome.desktop.background picture-uri "file://$1"
	    ;;
	"GNOME3")
	    gsettings set org.mate.background draw-background true
	    gsettings set org.mate.background picture-options spanned
	    gsettings set org.mate.background picture-filename "$1"
	    ;;
	"CINNAMON")
	    gsettings set org.cinnamon.desktop.background picture-uri "file://$1"
	    ;;
	esac
	}

WINDOWMANAGER=CINNAMON
STORAGE_FOLDER=~/Pictures/webcamlog/
PICTURE_PATH=~/Pictures/wallpaper/ahwahnee2.jpg
# This one is actually more beautiful, but it is broken
FEED_URL=http://pixelcaster.com/yosemite/webcams/ahwahnee2.jpg
#FEED_URL=http://pixelcaster.com/yosemite/webcams/yosfalls.jpg
OUT=`date +%F-%H-%M`.jpg

wget -r "$FEED_URL" -O "$STORAGE_FOLDER/$OUT"

# set the last downloaded file as background
set_background "$STORAGE_FOLDER/$OUT"
