#!/bin/bash
sleep 0.5
printf "\n"
printf "UPDATING LINUX KERNEL IN UBUNTU"
printf "\n"
sleep 0.5
sudo apt-get -y update
printf "\n"
sleep 0.5
printf "INSTALLING PYTHON3"
printf "\n"
sleep 0.5
sudo apt-get -y install python3
sleep 0.5

printf "\n"
printf "INSTALLING PIP3"
printf "\n"
sleep 0.5
printf "\n"
sudo apt-get -y install python3-pip
sleep 0.5

printf "\n"
printf "CHECKING PIP3 VERSION"
printf "\n"
sleep 0.5
printf "\n"
sudo pip3 --version
sleep 0.5

printf "\n"
printf "INSTALLING requests PACKAGE"
printf "\n"
sleep 0.5
printf "\n"
sudo pip3 install requests
sleep 0.5

printf "\n"
printf "INSTALLING pandas PACKAGE"
printf "\n"
sleep 0.5
printf "\n"
sudo pip3 install pandas
sleep 0.5

printf "\n"
printf "INSTALLING numpy PACKAGE"
printf "\n"
sleep 0.5
printf "\n"
sudo pip3 install numpy
sleep 0.5

printf "\n"
printf "INSTALLING pymongo PACKAGE"
printf "\n"
sleep 0.5
printf "\n"
sudo pip3 install pymongo
sleep 0.5

printf "\n"
printf "INSTALLING scrapy PACKAGE"
printf "\n"
sleep 0.5
printf "\n"
sudo pip3 install scrapy
sleep 0.5

printf "\n"
printf "INSTALLING scrapy-s3pipeline PACKAGE"
printf "\n"
sleep 0.5
printf "\n"
sudo pip3 install scrapy-s3pipeline
sleep 0.5

printf "\n"
printf "INSTALLING setuptools-rust PACKAGE"
printf "\n"
sleep 0.5
printf "\n"
sudo pip3 install setuptools-rust
sleep 0.5

printf "\n"
printf "INSTALLING boto3 PACKAGE"
printf "\n"
sleep 0.5
printf "\n"
sudo pip3 install boto3
sleep 0.5

printf "\n"
printf "INSTALLING scrapyd PACKAGE"
printf "\n"
sleep 0.5
printf "\n"
sudo pip3 install scrapyd
sleep 0.5

printf "\n"
printf "INSTALLING scrapyd-client PACKAGE"
printf "\n"
sleep 0.5
printf "\n"
sudo pip3 install scrapyd-client
sleep 0.5

printf "\n"
printf "INSTALLING unzip PACKAGE"
printf "\n"
sleep 0.5
printf "\n"
sudo apt install unzip
sleep 0.5

printf "\n"
printf "CREATING /etc/scrapyd DIRECTORY"
printf "\n"
sudo mkdir -p /etc/scrapyd
printf "\n"
sleep 0.5

printf "DOWNLOADING scrapyd.conf FILE FROM GIT"
printf "\n"
sudo curl https://raw.githubusercontent.com/vemulasravan6/staticfiles/2c1dbcacd66ad1bc1953710466709186f7bec67b/scrapyd.conf -o /etc/scrapyd/scrapyd.conf
printf "\n"
sleep 0.5

printf "DOWNLOADING scrapyd-deploy FILE FROM GIT"
printf "\n"
sudo sudo curl https://raw.githubusercontent.com/vemulasravan6/staticfiles/master/scrapyd-deploy -o /usr/local/bin/scrapyd-deploy
printf "\n"
sleep 0.5

printf "\n"
printf "CREATING /home/ubuntu/code FOR SOURCE CODE"
printf "\n"
sleep 0.5
sudo mkdir -p /home/ubuntu/code
sleep 0.5
printf "\n"

printf "\n"
printf "STARTING scrapyd SERVER"
printf "\n"
sleep 0.5
sudo scrapyd > scrapyd.log &
printf "\n"
printf "STARTED SCRAPYD SERVER !"
printf "\n"

printf "\n"
printf "DOWNLOADING CODE FROM S3"
printf "\n"
sleep 0.5
#sudo curl https://aionics.s3.us-east-2.amazonaws.com/code/aionics-forage.zip -o /home/ubuntu/code/aionics-forage.zip
#sudo unzip -o /home/ubuntu/code/aionics-forage.zip -d /home/ubuntu/code
cd /home/ubuntu/code
sudo git clone https://vemulasravan6%40gmail.com-at-714677628526:ok2czZTzEDn5VEQ3ardEkGpIc9S9fxJ9FNdEsjJhTUA\=@git-codecommit.us-east-2.amazonaws.com/v1/repos/aionics-forage


sleep 0.5
printf "CHECK IF CODE AVAILABLE HERE..!"
sudo chmod -R 777  /home/ubuntu/code
sudo chown -R ubuntu /home/ubuntu/code
sudo chgrp -R ubuntu /home/ubuntu/code
sudo ls -ltrh /home/ubuntu/code
sleep 0.5

printf "\n"
printf "DEPLOYING CODE TO SCRAPYD SERVER"
printf "\n"
sleep 0.5

cd /home/ubuntu/code/aionics-forage
sudo scrapyd-deploy pc_deploy -p pubchem
echo "deployment_succesful" > /home/ubuntu/deployment_success.txt
printf "\n"
printf "DONE WITH ALL INSTALLATIONS.. SYSTEM IS READY!"
printf "\n"
