#!/bin/sh

echo "Input Name (no file extension):"
read INPUT_FILE
echo "Formatting $INPUT_FILE.json"
if python ./aws-transcribe-transcript/transcript.py json/$INPUT_FILE.json
then
  # Move the file to the output folder
  mv json/$INPUT_FILE.json.txt Output_Text/$INPUT_FILE.txt
  echo "File moved to Output_Text folder"
else
  echo "Transcription Formatting Error"
fi
