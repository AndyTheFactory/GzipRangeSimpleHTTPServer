FROM python:3.11-alpine3.19

ENV ENCODING=--encoding=gzip
ENV MAX_FILE_SIZE=--max-file-size=10000


RUN pip install gzip-range-httpd

EXPOSE 8000

VOLUME /tmp/share

WORKDIR /tmp/share

RUN echo "#!/bin/sh" > /entrypoint.sh
RUN echo "python -m gzip_range_httpd 8000 ${ENCODING} ${MAX_FILE_SIZE}" >> /entrypoint.sh

ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]