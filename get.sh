#!/bin/bash
last=$(date);
echo "#Last update: $last";
echo "/ip firewall address-list remove [/ip firewall address-list find list=NoNAT]";
echo "/ip firewall address-list";

for range in $( curl --silent -X POST -H 'Connection: close' "https://raw.githubusercontent.com/naruto522ru/ipranges/main/telegram/ipv4_merged.txt"); do
    echo ":do { add address=$range list=gfw} on-error={}";
done;

echo ":do { add address=10.0.0.0/8 list=gfw} on-error={}";
