#!/bin/bash
host=$1

my_path=`which $0 `
dir_script_in=`dirname ${my_path}`
info=`${dir_script_in}/gcil | grep $host`
zone=`echo $info | awk '{print $2}'`
gcloud compute --project "market-data-184017" ssh --zone "$zone" "$host"


