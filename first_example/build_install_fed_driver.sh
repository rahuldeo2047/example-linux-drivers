#!/bin/sh

MSGCOLOR='\033[0;36m'
INFOCOLOR='\033[1;35m' 
IMPCOLOR='\033[1;37m'
NC='\033[0m' # No Color

echo "${MSGCOLOR}dmesg -c: Clearning all earlier syslogs ${NC}..."
sudo dmesg -c > /dev/null
echo
echo "${MSGCOLOR}make: Building ${NC}..."
sudo make
echo
echo "${MSGCOLOR}modeinfo: Check kernel particulars ${NC}..."
modinfo fed.ko
echo
echo "${MSGCOLOR}rmmod: Removing the driver ${NC}..."
sudo rmmod fed.ko
echo
echo "${MSGCOLOR}insmode: Installing the driver ${NC}..."
sudo insmod fed.ko
echo
echo "${MSGCOLOR}lsmod: check kernel registry ${NC}..."
lsmod | grep -E 'fed|Module'
echo
echo "${MSGCOLOR}syslog: Please wait till final \"${IMPCOLOR}fed: module registered\" ${MSGCOLOR}msg ... ${INFOCOLOR}(^C to exit)${NC}"
tail -f /var/log/syslog | grep 'fed: '
