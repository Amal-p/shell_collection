#!/bin/sh

SERVICE=mysql;
echo "Enter the System password: " 
read PASSWORD

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    echo "$SERVICE service running"
    echo $PASSWORD | sudo -S service mysql stop
    sleep 2
    echo "$SERVICE service stoped"
fi
    
SERVICE=apache2;

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    echo "$SERVICE service running"
    echo $PASSWORD | sudo -S systemctl stop apache2
    sleep 2
    echo "$SERVICE service stoped"
fi
    
SERVICE=nginx;

if ps ax | grep -v grep | grep $SERVICE > /dev/null
then
    echo "$SERVICE service running"
   echo $PASSWORD | sudo -S systemctl stop nginx
    sleep 2
    echo "$SERVICE service stoped"
fi
    
sleep 2

echo $PASSWORD | sudo -S /opt/lampp/lampp start

sleep 2
sudo /opt/lampp/manager-linux-x64.run
