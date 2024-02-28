#Last update: Wed Feb 28 03:44:57 UTC 2024
/ip firewall address-list remove [/ip firewall address-list find list=NoNAT]
/ip firewall address-list
:do { add address=91.105.192.0/23 list=gfw} on-error={}
:do { add address=91.108.16.0/21 list=gfw} on-error={}
:do { add address=91.108.36.0/22 list=gfw} on-error={}
:do { add address=91.108.4.0/22 list=gfw} on-error={}
:do { add address=91.108.56.0/22 list=gfw} on-error={}
:do { add address=91.108.8.0/21 list=gfw} on-error={}
:do { add address=95.161.64.0/20 list=gfw} on-error={}
:do { add address=95.161.80.0/24 list=gfw} on-error={}
:do { add address=95.161.84.0/22 list=gfw} on-error={}
:do { add address=149.154.160.0/20 list=gfw} on-error={}
:do { add address=185.76.151.0/24 list=gfw} on-error={}
:do { add address=10.0.0.0/8 list=gfw} on-error={}
