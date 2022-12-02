#!/bin/sh

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
sudo rm -rf google-chrome-stable_current_amd64.deb
sudo apt-get install python3
sudo apt-get install python3-pip
python3 -m pip install selenium
