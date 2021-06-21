#!/bin/bash


if [ -f /etc/redhat-release ]; then
	if [ grep -q -i "release 7" /etc/redhat-release ]; then
		echo "running RHEL 7.x"
	else
		echo "RHEL Version"
	fi
fi

if [ -f /opt/splunk/etc/system/local/deploymentclient.conf ]; then
	mv /opt/splunk/etc/system/local/deploymentclient.conf 
fi

if [ -f /opt/splunk/etc/apps/splunk_emea_all_deploymentclient ]; then
	mv /opt/splunk/etc/apps/splunk_emea_all_deploymentclient 
fi

if [ -f /opt/splunk/etc/apps/splunk_all_deploymentclient ]; then
	mv /opt/splunk/etc/apps/splunk_all_deploymentclient 
fi


