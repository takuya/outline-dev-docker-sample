#!/usr/bin/env bash
## : vim

cd $( dirname $( realpath $0 ) )
DIR=$(pwd)
IMAGE=takuya/outline


NAME="outline"
base_dir=$DIR
data_dir=$DIR/data

PORT_PUBLISH=33013 
## ENV
ENV_FILE=$base_dir/outline-wiki-env
## vol

if [[ ! -z $(docker ps -q  --filter name=$NAME ) ]] ; then
  echo  $NAME is already started. stopping...
  docker stop $(docker ps -q  --filter name=$NAME )
  while [[ ! -z $(docker ps -a -q  --filter name=$NAME ) ]] ; do
    sleep 1
  done
  echo done

fi


## build
echo cd docker-build
cd docker-build
echo docker build -t ${IMAGE} .
docker build -t ${IMAGE} .
cd ..


## 
## docker pull $IMAGE

## 
CMD="docker run \
  --name ${NAME} \
  -d \
  --rm \
  --publish ${PORT_PUBLISH}:3000 \
  --env-file $ENV_FILE \
  -v  ${data_dir}:/root/data \
  ${IMAGE}
"

echo $CMD
$CMD


