FROM python:2.7.13-slim

RUN apt-get update

RUN apt-get install -y --no-install-recommends \
    gcc \
    libssl-dev \
    libcurl4-openssl-dev

RUN pip install psycopg2 cyclops

COPY cyclops.conf /cyclops.conf
COPY entrypoint.sh /entrypoint.sh

RUN ls -lah /
RUN bash

CMD ["bash", "/entrypoint.sh"]

