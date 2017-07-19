#!/bin/sh


# docker pull imlonghao/shadowsocks-go

docker run -d -p 10086:3456 imlonghao/shadowsocks-go -p 3456 -k 945497622 -m aes-256-cfb -t 60

