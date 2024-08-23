#!/bin/bash
wget https://releases.hashicorp.com/terraform/1.9.4/terraform_1.9.4_linux_amd64.zip
sudo apt install zip -y
unzip terraform_1.9.4_linux_amd64.zip
cd /home/ubuntu/
sudo mv terraform /usr/local/bin
sudo rm -rfv terraform_1.9.4_linux_amd64.zip
