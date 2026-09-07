#!/bin/bash
#
# rfriends3 for proxmox 2026/09/08
# easy install script
#
echo easy install Ver 1.0
echo

if uname -a | grep -q "-pve"; then
    echo "これは Proxmoxです"
else
    echo "Proxmoxではありません"
    exit 1
fi

cd ~/

sudo apt update
sudo apt install -y git
rm -rf rfriends3_core

git clone https://github.com/rfriends/rfriends3_core.git  
cd rfriends3_core
  
sh install_ubuntu.sh
