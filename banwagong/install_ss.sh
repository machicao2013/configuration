#!/bin/sh

yum -y install epel-release
yum update
yum -y install python-setuptools m2crypto supervisor
easy_install pip 
pip install shadowsocks

