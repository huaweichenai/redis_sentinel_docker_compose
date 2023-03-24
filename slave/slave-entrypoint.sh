#!/bin/sh

sed -i "s/\$SLAVE_PORT/$SLAVE_PORT/g" /usr/local/etc/redis/redis.conf

sed -i "s/\$ANNOUNCE_IP/$ANNOUNCE_IP/g" /usr/local/etc/redis/redis.conf

sed -i "s/\$AUTH_PASS/$AUTH_PASS/g" /usr/local/etc/redis/redis.conf

redis-server /usr/local/etc/redis/redis.conf --slaveof $ANNOUNCE_IP $MASTER_PORT
