#!/bin/sh

BLUE='\033[0;92m'
NC='\033[0m'

echo -e ${BLUE}Download Python 3.10.2${NC}
wget https://www.python.org/ftp/python/3.10.2/Python-3.10.2.tgz

echo -e ${BLUE}unzip files${NC}
tar -zxvf Python-3.10.2.tgz

echo -e ${BLUE}clear dependencies${NC}
sudo apt-get install build-essential gdb lcov pkg-config libbz2-dev libffi-dev libgdbm-dev libgdbm-compat-dev liblzma-dev libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev lzma lzma-dev tk-dev uuid-dev zlib1g-dev

echo -e ${BLUE}set configuration parameters${NC}
 cd /Python-3.10.2
 ./configure --enable-optimizations --with-openssl="/usr" --libdir=/usr/local/lib

echo -e ${BLUE}install Python 3.10.2${NC}
sudo make altinstall
cd
