#!/bin/bash
#Install script. Not explaining it because Im going to remove this around alot
echo ' Hope you have root'
sudo apt-get install -y python-pip python-flask git 
sudo pip install flask-bootstrap
sudo pip install flask-appconfig>=0.10
sudo pip install flask-nav
sudo pip install flask-debug
sudo pip install flask-wtf
git clone https://github.com/AnthonyLaiuppa/acataday.git
crontab -l >mycron 
echo "01 00 * * * ~/acataday/getpic.sh" >> mycron
crontab mycron
rm mycron
echo 'Scheduled cron to regenerate cat picture at 12:01 everyday' 
sudo python __init__.py
