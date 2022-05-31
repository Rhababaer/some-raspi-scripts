#!/bin/sh

BLUE='\033[1;33m'
NC='\033[0m'

echo  "${BLUE}(1/6) Download Python 3.10.2${NC}"
cd
wget https://www.python.org/ftp/python/3.10.2/Python-3.10.2.tgz

echo  "${BLUE}(2/6) unzip files${NC}"
tar -zxvf Python-3.10.2.tgz

echo  "${BLUE}(3/6)clear dependencies${NC}"
sudo apt-get install build-essential gdb lcov pkg-config libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev lzma lzma-dev tk-dev uuid-dev zlib1g-dev

echo  "${BLUE}(4/6) set configuration parameters${NC}"
 cd Python-3.10.2/
 ./configure --enable-optimizations --with-openssl="/usr" --libdir=/usr/local/lib

 echo  "${BLUE}(5/6) install Python 3.10.2${NC}"
sudo make altinstall

 echo  "${BLUE}(6/6) install libraries${NC}"
 pip3.10 install appJar
 pip3 install appJar
 pip install appJar
 pip3.10 install pySerial
 pip3 install pySerial
 pip install pySerial
 pip3.10 install pyInstaller
 pip3 install pyInstaller
 pip install pyInstaller
 pip3.10 install RPi.GPIO
