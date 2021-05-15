#!/bin/bash 
sleep 1
printf "\n"
printf "UPDATING LINUX KERNEL IN UBUNTU"
printf "\n"
sleep 1
sudo apt-get -y update
printf "\n"
sleep 1
printf "INSTALLING PYTHON3"
printf "\n"
sleep 1
sudo apt-get -y install python3
sleep 1


printf "\n"
printf "INSTALLING PIP3"
printf "\n"
sleep 1
printf "\n"
sudo apt-get -y install python3-pip
sleep 1


printf "\n"
printf "CHECKING PIP3 VERSION"
printf "\n"
sleep 1
printf "\n"
sudo pip3 --version
sleep 1

printf "\n"
printf "INSTALLING requests PACKAGE"
printf "\n"
sleep 1
printf "\n"
sudo pip3 install requests
sleep 1

printf "\n"
printf "INSTALLING pandas PACKAGE"
printf "\n"
sleep 1
printf "\n"
sudo pip3 install pandas
sleep 1

printf "\n"
printf "INSTALLING numpy PACKAGE"
printf "\n"
sleep 1
printf "\n"
sudo pip3 install numpy
sleep 1

printf "\n"
printf "INSTALLING pymongo PACKAGE"
printf "\n"
sleep 1
printf "\n"
sudo pip3 install pymongo
sleep 1

printf "\n"
printf "INSTALLING scrapy PACKAGE"
printf "\n"
sleep 1
printf "\n"
sudo pip3 install scrapy
sleep 1

printf "\n"
printf "INSTALLING scrapy-s3pipeline PACKAGE"
printf "\n"
sleep 1
printf "\n"
sudo pip3 install scrapy-s3pipeline
sleep 1

printf "\n"
printf "INSTALLING setuptools-rust PACKAGE"
printf "\n"
sleep 1
printf "\n"
sudo pip3 install setuptools-rust
sleep 1

printf "\n"
printf "INSTALLING boto3 PACKAGE"
printf "\n"
sleep 1
printf "\n"
sudo pip3 install boto3
sleep 1

printf "\n"
printf "INSTALLING scrapyd PACKAGE"
printf "\n"
sleep 1
printf "\n"
sudo pip3 install scrapyd
sleep 1

printf "\n"
printf "INSTALLING scrapyd-client PACKAGE"
printf "\n"
sleep 1
printf "\n"
sudo pip3 install scrapyd-client
sleep 1

printf "\n"
printf "CREATING /etc/scrapyd DIRECTORY"
printf "\n"
sudo mkdir -p /etc/scrapyd
printf "\n"
sleep 1

printf "DOWNLOADING scrapyd.conf FILE FROM GIT"
printf "\n"
sudo curl https://raw.githubusercontent.com/vemulasravan6/staticfiles/2c1dbcacd66ad1bc1953710466709186f7bec67b/scrapyd.conf -o /etc/scrapyd/scrapyd.conf
printf "\n"
sleep 1

printf "\n"
printf "CREATING /home/ubuntu/code FOR SOURCE CODE"
printf "\n"
sleep 1
sudo mkdir -p /home/ubuntu/code
sudo chmod -R 777  /home/ubuntu/code
sudo chown -R ubuntu /home/ubuntu/code
sudo chgrp -R ubuntu /home/ubuntu/code
sleep 1
printf "\n" 

printf "\n"
printf "STARTING scrapyd SERVER"
printf "\n"
sleep 1 
scrapyd > scrapyd.log &
printf "\n"
printf "DONE WITH ALL INSTALLATIONS.. SYSTEM IS READY!"
printf "\n"

