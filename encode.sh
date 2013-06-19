#!/bin/bash

TMP_FILE=$(mktemp)
OUT_FILE=~/Dropbox/ChilliCam/timelapse.avi

ls ~/Desktop/snapshots/*.jpg > ${TMP_FILE}
nice -19 mencoder -nosound -ovc lavc -lavcopts vcodec=mjpeg -o ${OUT_FILE} -mf type=jpeg:fps=24 mf://@${TMP_FILE}

rm ${TMP_FILE}
