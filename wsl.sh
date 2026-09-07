#!/bin/bash
#
# rfriends3 for wsl 2026/08/19
# easy install script
#
echo Ver 1.0
#

cd ~/

sudo apt update && sudo apt upgrade -y
sudo apt install -y git
rm -rf rfriends3_core

git clone https://github.com/rfriends/rfriends3_core.git  
cd rfriends3_core
  
sh install_ubuntu.sh

# if debian
#sh install_debian.sh
