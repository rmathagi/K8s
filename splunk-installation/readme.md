## Description

This repository is to help automate Splunk Cluster Installation.

## Prerequisites
1. Splunk Enterprise Package and valid license

2. Comment Directory creation in the below 2 files if they are already available:
	splunk_amer_indexer/tasks/splunk_amer_indexer.yml
	splunk_emea_indexer/tasks/splunk_emea_indexer.yml

## Config Files

1. Cluster Hostname Details - cloud_environment/splunk.ini
2. Splunk Config Details - cloud_environment/group_vars/splunk/splunk.yml
3. Splunk Apps - roles/<rolename>/files
4. Splunk Apps Config - roles/<rolename>/templates

## Installation
1. Copy the Enterprise RPM to the below location
ansible-installation/roles/splunk_common/files

2. Copy Enterprise License to the below location
ansible-installation/roles/splunk_monitor/templates

3. Execute the following to install and configure Splunk Multi Site Indexer Cluster 
ansible-playbook -i cloud_environment/splunk.ini site.yml -u centos --sudo

4. Login into LM/MC GUI and and change MC settings.

## Validation
1. Execute the following on Master Node and check if all indexers are reporting and running. 
/opt/splunk/bin/splunk show cluster-bundle-status

2. Execute th following on any of the Search Head Nodes to validate SH Cluster has been properly configured.
/opt/splunk/bin/splunk show shcluster-status

3. Login to LM/MC GUI, run Health Check report and follow recommendations if any ERRORS.

