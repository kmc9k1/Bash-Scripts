#!/bin/bash

if [ "$1" == "" ]
echo "Please specify an IP address."
echo "Syntax: ./ping_sweep.sh 192.168.1"

else
for ip in `seq 1 254`; do
ping -c 1 $1.$ip | grep "64 bytes" | cut -d " " -f 4 | tr -d ":" &
done
fi