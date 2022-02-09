# HIHO Podcast Transcriber

This project takes json output from AWS Transcription and converts it into a human readable script.

## Setup

- Upload audio files of podcast episodes to S3
- Run AWS Transcribe on the file
- Custom vocabulary is included in this project (must be uploaded to S3 to create/update vocab as a table)
- Download output json and store in json as {episode_name}.json

```bash
pip install foobar
```

## AWS Commands
Upload Audio to S3
```bash
aws s3 cp Audio/{file.mp3} s3://hiho-transcription/Audio_Input/{file.mp3}
```

Upload Vocab to S3
```bash
aws s3 cp HIHO-vocab.csv s3://hiho-transcription/HIHO-vocab.csv
```

Run Update Vocab Job
```bash
aws transcribe update-vocabulary \
  --vocabulary-file-uri s3://hiho-transcription/HIHO-vocab.csv \
  --vocabulary-name Gymnastics \
  --language-code en-US
```

Get Vocabulary Status
```bash
aws transcribe get-vocabulary \
  --vocabulary-name Gymnastics
```

Start Transcription job
```bash
aws transcribe start-transcription-job \
  --cli-input-json file://transcribe_job.json
```

Get Transcription Job Status
```bash
aws transcribe get-transcription-job \
  --transcription-job-name Gymnastics
```

Get Transcription Output from S3
```bash
aws s3 cp \
  s3://hiho-transcription/output/Kaiya_Lindhardt.mp3 \
  json/Kaiya_Lindhardt.json
```

## Usage

```bash
./transcribe_formatter.sh
```
This will create an output text file script in /output_text
Text files should be reviewed for accuracy before use

## TODO

### Automation Steps
  - Add to vocab with correct format
  - Run job remotely
  - Send Job output to S3
  - Download job output file

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
