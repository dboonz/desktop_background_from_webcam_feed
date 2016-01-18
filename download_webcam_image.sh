STORAGE_FOLDER=~/Pictures/webcamlog/
PICTURE_PATH=~/Pictures/wallpaper/ahwahnee2.jpg
FEED_URL=http://pixelcaster.com/yosemite/webcams/yosfalls.jpg
sleep 10
wget -r $FEED_URL -O $PICTURE_PATH
OUT=`date +%F-%H-%M`.jpg
cp $PICTURE_PATH $STORAGE_FOLDER/$OUT
echo $OUT
