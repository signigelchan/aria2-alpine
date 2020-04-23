#!/bin/sh

CONF_FILE="/etc/aria2/aria2.conf"

if [ -f ${CONF_FILE} ]; then
	if [ `grep -c "rpc-secret=" ${CONF_FILE}` -eq '0' ]; then
		if [ $SECRET ]; then
			echo "rpc-secret=${SECRET}" >> ${CONF_FILE}
		fi
	fi
fi

aria2c --conf-path=/etc/aria2/aria2.conf
