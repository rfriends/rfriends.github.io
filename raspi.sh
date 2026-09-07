#!/bin/bash
#
# rfriends3 for Raspbian 2026/08/19
# easy install script
#
echo easy install Ver 1.0
echo

if cat /etc/os-release | grep -q "raspbian"; then
    echo "このOSは Raspbianです"
else
    echo "Raspbian ではありません"
    exit 1
fi

cd  ~/  
rm -rf rfriends3_core  
git clone https://github.com/rfriends/rfriends3_core.git  
cd rfriends3_core  
sh install_debian.sh

sudo systemctl stop apache2
sudo systemctl disable apache2  
