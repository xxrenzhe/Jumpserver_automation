#!/bin/bash
# Function : install latest Python
# CTime : 2014.10.21
# Author : Jason.Yu

cd $1
python2.6 setup.py build
sudo python2.6 setup.py install
