FROM python:2.7.13-slim

RUN apt-get update

RUN apt-get install -y --no-install-recommends \
    gcc \
    libssl-dev \
    libcurl4-openssl-dev

RUN pip install cyclops

COPY cyclops.conf /cyclops.conf
COPY entrypoint.sh /entrypoint.sh

CMD ["/entrypoint.sh"]

