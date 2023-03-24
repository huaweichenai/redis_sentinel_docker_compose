#!/bin/sh

sed -i "s/\$ANNOUNCE_IP/$ANNOUNCE_IP/g" /etc/redis/sentinel.conf

sed -i "s/\$MASTER_NAME/$MASTER_NAME/g" /etc/redis/sentinel.conf
sed -i "s/\$MASTER_PORT/$MASTER_PORT/g" /etc/redis/sentinel.conf
sed -i "s/\$SENTINEL_PORT/$SENTINEL_PORT/g" /etc/redis/sentinel.conf
sed -i "s/\$SENTINEL_QUORUM/$SENTINEL_QUORUM/g" /etc/redis/sentinel.conf
sed -i "s/\$SENTINEL_DOWN_AFTER/$SENTINEL_DOWN_AFTER/g" /etc/redis/sentinel.conf
sed -i "s/\$SENTINEL_FAILOVER/$SENTINEL_FAILOVER/g" /etc/redis/sentinel.conf

sed -i "s/\$AUTH_PASS/$AUTH_PASS/g" /etc/redis/sentinel.conf

redis-server /etc/redis/sentinel.conf --sentinel
