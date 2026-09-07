#!/bin/bash
#
# rfriends3 for Ubuntu 2026/08/19
# easy install script
#
echo easy install Ver 1.0
echo

if cat /etc/os-release | grep -q "ubuntu"; then
    echo "このOSは Ubuntu 系です"
else
    echo "Ubuntu 系ではありません"
    exit 1
fi

cd ~/

sudo apt update && sudo apt upgrade -y
sudo apt install -y git
rm -rf rfriends3_core

git clone https://github.com/rfriends/rfriends3_core.git  
cd rfriends3_core
  
sh install_ubuntu.sh


