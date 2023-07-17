#!/bin/bash
if [ -e /etc/hosts_backup ]; then
	sudo sh -c 'sed -i "/# GitHub520 Host Start/Q" /etc/hosts && curl https://raw.hellogithub.com/hosts >> /etc/hosts'
else
	sudo cp /etc/hosts /etc/hosts_backup
	sudo sh -c 'sed -i "/# GitHub520 Host Start/Q" /etc/hosts && curl https://raw.hellogithub.com/hosts >> /etc/hosts'
fi
