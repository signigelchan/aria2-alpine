#!/bin/sh

if [ -f /etc/aria2/aria2.conf ]; then
        if [ $SECRET ]; then
                echo "rpc-secret=${SECRET}" >> /etc/aria2/aria2.conf
        fi
fi

aria2c --conf-path=/etc/aria2/aria2.conf
