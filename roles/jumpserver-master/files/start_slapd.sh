#!/bin/bash
# Function : config slapd and start service
# CTime : 2015.01.26
# Author : Jason.Yu

sudo /etc/init.d/slapd start
sudo /bin/rm -rf /etc/openldap/slapd.d/*
sudo /usr/sbin/slaptest -f /etc/openldap/slapd.conf -F /etc/openldap/slapd.d
sudo /bin/chown -R ldap:ldap /etc/openldap/slapd.d/
sudo /etc/init.d/slapd restart

