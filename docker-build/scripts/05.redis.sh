#!/bin/bash

DEBIAN_FRONTEND=noninteractive apt-get install redis-server -y 

sed -i -e 's/daemonize yes/daemonize no/' /etc/redis/redis.conf
sed -i -e 's/supervised no/supervised auto/' /etc/redis/redis.conf

