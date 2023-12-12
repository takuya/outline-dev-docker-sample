#!/bin/bash

## node && npm
curl -sL https://deb.nodesource.com/setup_18.x | bash -
apt-get update 
DEBIAN_FRONTEND=noninteractive apt-get install  nodejs -y 
## yarn
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | gpg --dearmor | tee /usr/share/keyrings/yarnkey.gpg >/dev/null
echo "deb [signed-by=/usr/share/keyrings/yarnkey.gpg] https://dl.yarnpkg.com/debian stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update && apt-get install yarn


