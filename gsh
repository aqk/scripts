#!/bin/bash

# TODO: add support for multiple hosts
# TODO: cache 'gcloud compute instance list' for speed
# TODO: convert to python

if [ $# -lt 1 ]; then
  echo usage: gsh hostname [command]
  exit 1
fi

host=$1
shift
command="$@"

info=`gcil | grep $host`
ip=$(echo $info | awk '{print $5}')
zone=$(echo $info | awk '{print $2}')

#echo
#echo HOST: $host

if [ -z "$command" ]; then
gcloud compute ssh $host --zone $zone
else
gcloud compute ssh $host --zone $zone --command "$command"
fi

