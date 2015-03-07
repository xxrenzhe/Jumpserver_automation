#!/bin/bash
# Function : install latest Python
# CTime : 2014.10.21
# Author : Jason.Yu

cd $1
sudo sed -i 's/^#binascii/binascii/' ./Modules/Setup
sudo sed -i 's/^#zlib/zlib/' ./Modules/Setup
sudo ./configure
sudo make clean
sudo make
sudo make install

mv /usr/bin/python /usr/bin/python.bak
ln -s /usr/local/bin/python2.7 /usr/bin/python
sudo sed -i 's@^#!/usr/bin/python$@#!/usr/bin/python2.6@' /usr/bin/yum
sudo sed -i 's@^#!/usr/bin/python -tt@#!/usr/bin/python2.6 -tt@' /usr/bin/repoquery
