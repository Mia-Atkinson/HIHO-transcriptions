#!/bin/sh

export PATH=/usr/local/bin:$PATH
source ~/.bash_profile

echo "Job Name:"
read JOB_NAME
# Group\ Containers/
export PODCAST_PATH="/Users/mianeil/Library/Group Containers/243LU875E5.groups.com.apple.podcasts/Library/Cache"

cd "$PODCAST_PATH"
export LONG_MP3=$(ls *.mp3)

if (mv $LONG_MP3 /Users/mianeil/Desktop/HIHO/Audio/$JOB_NAME.mp3)
then
  echo "Moving audio from podcasts to working directory"
  cd ~/Desktop/HIHO
  aws s3 cp Audio/$JOB_NAME.mp3 s3://hiho-transcription/Audio_Input/$JOB_NAME.mp3
fi
