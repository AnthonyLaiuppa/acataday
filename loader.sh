#!/bin/bash
echo ' Hope you have root'
sudo apt-get install -y python-pip python-flask git 
sudo pip install flask-bootstrap
sudo pip install flask-appconfig>=0.10
sudo pip install flask-nav
sudo pip install flask-debug
sudo pip install flask-wtf
git clone https://github.com/AnthonyLaiuppa/acataday.git
1 0 * * * ~/flaskProj/getpic.sh
echo 'Scheduled cron to regenerate cat picture at 12:01 everyday' 
sudo python __init__.py
