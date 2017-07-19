#!/bin/sh


# docker pull oddrationale/docker-shadowsocks

docker run -d -p 1984:1984 oddrationale/docker-shadowsocks -s 0.0.0.0 -p 1984 -k p945497622 -m aes-256-cfb
