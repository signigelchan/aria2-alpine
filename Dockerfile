FROM alpine:latest

LABEL maintainer="signigelchan <signigelchan@163.com>"

ENV TZ Asia/Shanghai

ADD files/aria2.conf /config/aria2.conf
ADD files/start.sh /root/start.sh

RUN cd / \
        && apk add --no-cache --update aria2 \
        && mkdir -p /config \
        && mkdir -p /downloads \
        && mkdir -p /data \
        && touch /data/aria2.session \
        && touch /data/dht.dat \
        && touch /data/dht6.dat \
        && touch /root/.netrc \
        && chmod 600 /root/.netrc \
        && chmod +x /root/start.sh

EXPOSE 6800

ENTRYPOINT /root/start.sh
