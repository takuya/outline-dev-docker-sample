#!/bin/bash
echo -e  "APT::Install-Suggests 0;\nAPT::Install-Recommends 0;" |  tee /etc/apt/apt.conf.d/00-no-install-recommends
URL=http://ftp.jaist.ac.jp/pub/Linux/ubuntu/
sed -i -r "s|http://(jp.)?archive.ubuntu.com/ubuntu/?|${URL}|" /etc/apt/sources.list
sed -i -r "s|http://security.ubuntu.com/ubuntu/?|${URL}|" /etc/apt/sources.list
apt-get update -y 
DEBIAN_FRONTEND=noninteractive apt-get upgrade -y
DEBIAN_FRONTEND=noninteractive apt-get install vim-nox bash-completion -y 
