#!/bin/bash
sudo apt update
sudo apt install gcc build-essential libpcre3 libpcre3-dev libssl-dev zlib1g zlib1g-dev

$PWD = $(pwd)

mkdir $PWD/nginx
cd $PWD/nginx
wget http://nginx.org/download/nginx-1.14.2.tar.gz
tar -zxvf nginx-1.14.2.tar.gz

wget https://github.com/arut/nginx-rtmp-module/archive/master.zip
unzip master.zip

cd $PWD/nginx/nginx-1.14.2

./configure --with-http_ssl_module --add-module=../nginx-rtmp-module-master
make
sudo make install
rm /usr/local/nginx/conf/nginx.conf

cp $PWD/conf/nginx.conf /usr/local/nginx/conf/nginx.conf

mkdir /mnt/hls
mkdir /mnt/hls/server-one
mkdir /mnt/hls/server-two