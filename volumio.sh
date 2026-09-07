#!/bin/sh
cd ~/
sudo apt-get install git -y

rm -rf rfriends_volumio
git clone https://github.com/rfriends/rfriends_volumio.git  
cd rfriends_volumio  
sh rfriends_volumio.sh
