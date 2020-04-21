FROM alpine:latest

LABEL maintainer="signigelchan <signigelchan@hotmail.com>"

ENV TZ Asia/Shanghai

RUN cd / \
        && apk add --no-cache --update aria2 \
        && mkdir -p /etc/aria2 \
        && mkdir -p /downloads \
        && mkdir -p /data \
        && touch /data/session.dat \
        && touch /data/dht.dat \
        && touch /data/.netrc \
        && chmod 600 /data/.netrc

ADD files/aria2.conf /etc/aria2/aria2.conf
ADD files/start.sh /etc/aria2/start.sh

WORKDIR /etc/aria2

EXPOSE 6800

ENTRYPOINT chmod +x ./start.sh && ./start.sh
