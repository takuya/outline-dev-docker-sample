#!/usr/bin/bash

export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# echo $PATH

cd /root/outline
echo start
supervisorctl stop outline
yarn run upgrade
git pull
yarn
yarn sequelize db:migrate --env=production-ssl-disabled
yarn build
supervisorctl start outline

