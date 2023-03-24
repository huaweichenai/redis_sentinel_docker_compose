FROM redis:alpine

COPY ./config/sentinel.conf /etc/redis/sentinel.conf
RUN chown redis:redis /etc/redis/*

COPY sentinel-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/sentinel-entrypoint.sh

ENTRYPOINT ["sentinel-entrypoint.sh"]
