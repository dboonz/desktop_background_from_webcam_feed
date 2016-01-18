#!/bin/bash
# This script downloads a picture from $FEED_URL, and stores it in $PICTURE_PATH
# overwriting any previous image there. It also stores an image with the date to $STORAGE_FOLDER.
# (c) Dirk Boonzajer
# can be used in conjunction with mate and CRON to update the desktop background every N minutes.
STORAGE_FOLDER=~/Pictures/webcamlog/
PICTURE_PATH=~/Pictures/wallpaper/ahwahnee2.jpg
# This one is actually more beautiful, but it is broken
#FEED_URL=http://pixelcaster.com/yosemite/webcams/ahwahnee2.jpg
FEED_URL=http://pixelcaster.com/yosemite/webcams/yosfalls.jpg
OUT=`date +%F-%H-%M`.jpg

wget -r "$FEED_URL" -O "$STORAGE_FOLDER/$OUT"

# set the last downloaded file as background
set_background.sh "$STORAGE_FOLDER/$OUT"
