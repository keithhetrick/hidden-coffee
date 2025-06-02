FROM debian:bullseye-slim

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y tor nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

COPY torrc /etc/tor/torrc
COPY index.html /var/www/html/index.html

RUN echo "daemon off;" >> /etc/nginx/nginx.conf

CMD tor & nginx
