#!/bin/bash
#
# rfriends3 for Volumio 2026/08/19
# easy install script
#
echo easy install Ver 1.0
echo

if cat /etc/os-release | grep -q "volumio"; then
    echo "このOSは Volumioです"
else
    echo "Volumioではありません"
    exit 1
fi

cd ~/  
rm -rf rfriends_volumio
sudo apt-get install git  
git clone https://github.com/rfriends/rfriends_volumio.git  
cd rfriends_volumio  
sh rfriends_volumio.sh 
