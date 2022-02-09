#!/bin/sh

echo "Job Name:"
read JOB_NAME
export PODCAST_PATH="/Users/mianeil/Library/Group Containers/243LU875E5.groups.com.apple.podcasts/Library/Cache"
export LONG_MP3=$(ls *.mp3)
if (mv $PODCAST_PATH/$LONG_MP3 /Users/mianeil/Desktop/HIHO/Audio/$JOB_NAME.mp3)
then
  echo "Moving from podcasts to working directory"
fi
