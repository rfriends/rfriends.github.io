#!/bin/sh
cd ~/
sudo apt-get install git -y

rm -rf rfriends_moode
git clone https://github.com/rfriends/rfriends_moode.git  
cd rfriends_moode  
sh rfriends_moode.sh
