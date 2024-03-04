FROM python:3.11-alpine3.19

RUN pip install gzip-range-httpd

EXPOSE 8000

VOLUME /tmp/share

WORKDIR /tmp/share

ENTRYPOINT ["python3", "-m", "gzip_range_httpd", "8000"]
