# Python Simple HTTP Server with Gzip cmpression and Ranges

Built mainly to test some corner cases in newspaper4k

## Usage

```bash
python -m gzip_http_server 8080 --encoding=gzip --max-file-size=10000
```

or
```bash
docker run -v $PWD:/tmp/share -p 8000:8000 andythefactory/gzip-range-server
```

## Features

- Gzip compression
- Range requests
- Max file size will FORCE a ranged response if the file is larger than the max file size.