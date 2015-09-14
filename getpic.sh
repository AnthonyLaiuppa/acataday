#!/bin/bash
DATE=$(date +"%F")

wget http://thecatapi.com/api/images/get?format=src&type=gif
sleep 3
mv get?format=src catpic.jpg
echo 'Downloaded and named catpic.jpg \n'
cd past && mkdir $DATE
ls -a
echo 'Created past dir\n' 
cd ../
mv static/catpic.jpg past/$DATE

 
mv catpic.jpg static
echo ' Cat picture generated' 

