FROM redis:alpine

COPY ./config/redis.conf /usr/local/etc/redis/redis.conf

COPY slave-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/slave-entrypoint.sh

ENTRYPOINT ["slave-entrypoint.sh"]
