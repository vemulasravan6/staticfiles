#!/bin/bash

printf "\n"
printf "UPDATING LINUX KERNEL IN UBUNTU"
printf "\n"
sudo apt-get -y update
printf "\n"

printf "INSTALLING PYTHON3"
printf "\n"
sleep 0.5
sudo apt-get -y install python3

printf "\n"
printf "INSTALLING PIP3"
printf "\n"
sleep 0.5
printf "\n"
sudo apt-get -y install python3-pip


sudo curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
curl https://packages.microsoft.com/config/ubuntu/20.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
exit

sudo ACCEPT_EULA=Y apt-get install msodbcsql17
sudo ACCEPT_EULA=Y apt-get install mssql-tools
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bash_profile
echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
source ~/.bashrc

sudo apt-get install unixodbc-dev
sudo pip3 install pyodbc

printf "Done..!"
