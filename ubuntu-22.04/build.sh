#!/bin/bash


#download SSL
cd /usr/local/src/
apt -y install wget
wget https://www.openssl.org/source/openssl-1.1.1c.tar.gz
tar -xf openssl-1.1.1c.tar.gz
cd openssl-1.1.1c
./config --prefix=/usr/local/ssl --openssldir=/usr/local/ssl shared zlib
make > logs.txt
cat logs.txt