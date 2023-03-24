FROM redis:alpine

COPY ./config/redis.conf /usr/local/etc/redis/redis.conf

COPY master-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/master-entrypoint.sh

EXPOSE 6379
ENTRYPOINT ["master-entrypoint.sh"]
