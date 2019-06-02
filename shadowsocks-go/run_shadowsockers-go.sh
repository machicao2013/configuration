#!/bin/sh


docker run -d -p 10086:3456 shadowsocks-go:latest -p 3456 -k 945497622 -m aes-256-cfb -t 60

