FROM debian:latest
MAINTAINER 945497622 <945497622@qq.com>

COPY ./shadowsocks-server.tar.gz /etc/shadowsocks-server.tar.gz
RUN cd /etc/ && tar zxvf /etc/shadowsocks-server.tar.gz
RUN chmod +x /etc/shadowsocks-server

ENTRYPOINT ["/etc/shadowsocks-server"]

