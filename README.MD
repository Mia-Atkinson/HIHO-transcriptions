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

## Usage

```bash
./transcribe_formatter.sh
```
This will create an output text file script in /output_text
Text files should be reviewed for accuracy before use

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.
