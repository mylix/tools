#!/bin/sh

echo "This will install sysbench v0.4.12. Hold tight."

wget https://deploy.intera.si/chef/Sysbench-0.4.12.tar.gz
tar xfvz Sysbench-0.4.12.tar.gz
cd Sysbench-0.4.12
libtoolize --force --copy
./autogen.sh
./configure --without-mysql
make
sudo make install

echo "Enjoy sysbench!"