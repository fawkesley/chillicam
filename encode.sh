#!/bin/bash -e

TMP_FILE=$(mktemp)
OUT_FILE=~/Dropbox/ChilliCam/timelapse.avi

find ~/Desktop/snapshots/ -iname '*.jpg' |sort > ${TMP_FILE}
nice -19 mencoder -nosound -ovc lavc -lavcopts vcodec=mpeg4 -o ${OUT_FILE} -mf type=jpeg:fps=24 mf://@${TMP_FILE}

rm ${TMP_FILE}
