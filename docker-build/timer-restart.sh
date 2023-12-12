#!/usr/bin/bash

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# echo $PATH
cd /root
while : ; do
  sleep 864000
  ./update-outline.sh
done

