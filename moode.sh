#!/bin/bash
#
# rfriends3 for Moode 2026/08/19
# easy install script
#
echo easy install Ver 1.0
echo

if command -v moodeutl >/dev/null 2>&1; then
    echo "このOSは Moode Audioです。"
else
    echo "このOSは Moode Audioではありません。"
    exit 1
fi

cd ~/  
sudo apt install git  
rm -rf rfriends_moode  
git clone https://github.com/rfriends/rfriends_moode.git  
cd rfriends_moode  
sh rfriends_moode.sh 
