#!/bin/bash
last=$(date);
echo "#Last update: $last";
echo "/ip firewall address-list remove [/ip firewall address-list find list=gfw]";
echo "/ip firewall address-list";

array=("https://raw.githubusercontent.com/lord-alfred/ipranges/main/openai/ipv4_merged.txt" 
        "https://raw.githubusercontent.com/lord-alfred/ipranges/main/google/ipv4_merged.txt" 
        "https://raw.githubusercontent.com/lord-alfred/ipranges/main/googlebot/ipv4_merged.txt" 
        "https://raw.githubusercontent.com/lord-alfred/ipranges/main/telegram/ipv4_merged.txt" 
        "https://raw.githubusercontent.com/lord-alfred/ipranges/main/facebook/ipv4_merged.txt" 
        "https://raw.githubusercontent.com/lord-alfred/ipranges/main/twitter/ipv4_merged.txt" 
        )
 
# 遍历字符串数组
for element in "${array[@]}" ; do
        for range in $( curl --silent -X GET -H 'Connection: close' $element); do
        echo ":do { add address=$range list=gfw} on-error={}";
    done;
done;
