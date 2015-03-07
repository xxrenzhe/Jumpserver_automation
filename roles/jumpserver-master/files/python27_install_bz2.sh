#!/bin/bash
# Function : install Python module bz2
# CTime : 2014.10.21
# Author : Jason.Yu

cd $1/Modules/zlib
sudo ./configure
sudo make
sudo make install
