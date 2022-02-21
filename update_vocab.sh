#!/bin/sh
export PATH=/usr/local/bin:$PATH
source ~/.bash_profile

#Upload vocab file to S3
aws s3 cp HIHO-vocab.csv s3://hiho-transcription/HIHO-vocab.csv

#Run vocab update
aws transcribe update-vocabulary \
  --vocabulary-file-uri s3://hiho-transcription/HIHO-vocab.csv \
  --vocabulary-name Gymnastics \
  --language-code en-US
