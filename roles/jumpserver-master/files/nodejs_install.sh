#!/bin/bash
# Function : install latest Nodejs
# CTime : 2015.01.27
# Author : Jason.Yu

cd $1
./configure --prefix=$2/node/
make
make install
