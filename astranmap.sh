#!/bin/bash
# -*- coding: utf-8 -*-
# AstraNmap v1.0
# Author: DedSecTL & Mr.b0t4k
# Date: 09-12-2017 (09:11)
# Github: http://github.com/Gameye98
# Blog: http://droidsec9798-com.mwapblog.com
# Team: Blackhole Security (BlackholeSec)
clear
echo "    _  - -  _                                                   "
echo " /             \                                                "
echo "|    ()   ()    |  ____ ____ ___ ____ ____   _  _ _  _ ____ ___ "
echo "(_     /|\     _)  |__| [__   |  |__/ |__| # |\ | |\/| |__| |__]"
echo " \_\,,,,,,,,,/_/   |  | ___]  |  |  \ |  | # | \| |  | |  | |   "
echo "    \_'''''_/      09-12-2017 (09:11). DedSecTL # BlackholeSec"
echo
echo " [01] Scan Single Host or IP address (IPv4)"
echo " [02] Scan multiple IP address or subnet (IPv4)"
echo " [03] Read list of hosts/networks from a file (IPv4)"
echo " [04] OS and version detection scan"
echo " [05] Scan a host when protected by the firewall"
echo " [06] Scan an IPv6 host/address"
echo " [07] Only show open (or possibly open) ports"
echo " [08] Show all packets sent and received"
echo " [09] Fast scan all your devices/computers for open ports ever"
echo " [00] Exit"
echo
echo -n "Astra@NMap:$ "
read astranmap

if [ $astranmap = "01" ] || [ $astranmap = "1" ];
then
echo -n "Enter (IP or Hostname): "
read iphostname
nmap $iphostname

elif [ $astranmap = "02" ] || [ $astranmap = "2" ];
then
echo -n "Enter (IP or Hostname): "
read iphostname
for lulz in $iphostname
do
  nmap $lulz
done

elif [ $astranmap = "03" ] || [ $astranmap = "3" ];
then
echo -n "Enter Text File: "
read txtfile
nmap -iL $txtfile

elif [ $astranmap = "04" ] || [ $astranmap = "4" ];
then
echo -n "Enter (IP or Hostname): "
read iphostname
nmap -A $iphostname

elif [ $astranmap = "05" ] || [ $astranmap = "5" ];
then
echo -n "Enter (IP or Hostname): "
read iphostname
nmap -PN $iphostname

elif [ $astranmap = "06" ] || [ $astranmap = "6" ];
then
echo -n "Enter IPv6-Address: "
read ipvsixaddress
nmap -6 $ipvsixaddress

elif [ $astranmap = "07" ] || [ $astranmap = "7" ];
then
echo -n "Enter (IP or Hostname): "
read iphostname
nmap --open $iphostname

elif [ $astranmap = "08" ] || [ $astranmap = "8" ];
then
echo -n "Enter (IP or Hostname): "
read iphostname
nmap --packet-trace $iphostname

elif [ $astranmap = "09" ] || [ $astranmap = "9" ];
then
echo -n "Enter (IP or Hostname): "
read iphostname
nmap -T5 $iphostname

elif [ $astranmap = "00" ] || [ $astranmap = "0" ];
then
exit

else
clear
echo -e "\033[1;31m[!] Wrong Input...\033[1;0m"
sleep 1
cd ../
sh $0
fi