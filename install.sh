#!/bin/bash
apt update
apt install -y gcc build-essential libpcre3 libpcre3-dev libssl-dev zlib1g zlib1g-dev

path=$(pwd)

mkdir $path/nginx
cd $path/nginx
wget http://nginx.org/download/nginx-1.14.2.tar.gz
tar -zxvf nginx-1.14.2.tar.gz

wget https://github.com/arut/nginx-rtmp-module/archive/master.zip
unzip master.zip

cd $path/nginx/nginx-1.14.2

./configure --with-http_ssl_module --add-module=../nginx-rtmp-module-master
make
make install
rm /usr/local/nginx/conf/nginx.conf

cp $path/conf/nginx.conf /usr/local/nginx/conf/nginx.conf

mkdir /mnt/hls
mkdir /mnt/hls/live

rm -Rf $path/nginx

/usr/local/nginx/sbin/nginx