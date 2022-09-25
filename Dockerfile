FROM alpine:latest

LABEL maintainer="signigelchan <signigelchan@163.com>"

ENV TZ Asia/Shanghai

ADD files/aria2.conf /etc/aria2/aria2.conf
ADD files/start.sh /etc/aria2/start.sh

RUN cd / \
        && apk add --no-cache --update aria2 \
        && mkdir -p /etc/aria2 \
        && mkdir -p /downloads \
        && mkdir -p /data \
        && touch /data/aria2.session \
        && touch /data/dht.dat \
        && touch /data/dht6.dat \
        && touch /data/.netrc \
        && chmod 600 /data/.netrc \
        && chmod +x /etc/aria2/start.sh

WORKDIR /etc/aria2

EXPOSE 6800

ENTRYPOINT ./start.sh
