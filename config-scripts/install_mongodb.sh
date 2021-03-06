#!/bin/bash
sudo gpg --keyserver keyserver.ubuntu.com --recv EA312927 &&\
sudo gpg --export --armor EA312927 | sudo apt-key add -- &&\
echo "Public key EA312927 has been added" 
sudo bash -c 'echo "deb http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.2 multiverse" > /etc/apt/sources.list.d/mongodb-org-3.2.list' 
sudo apt update
sudo apt install -y mongodb-org
sudo systemctl start mongod
sudo systemctl enable mongod
sudo systemctl status mongod
