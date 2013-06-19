#!/bin/bash
DIRECTORY=~/Desktop/snapshots
DATE=$(date '+%Y-%m-%_d_%X')
FILENAME=${DIRECTORY}/${DATE}.jpg

fswebcam -r 1280x1024 \
         --crop 800x1024,0x0 \
         --deinterlace \
         --top-banner \
         --title "chillicam.paulfurley.com" \
         --frames 10 \
	 --jpeg 95 \
         ${FILENAME}

