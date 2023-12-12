#!/bin/bash

DEBIAN_FRONTEND=noninteractive apt-get install git -y
cd /root
git clone https://github.com/outline/outline.git
cd outline
