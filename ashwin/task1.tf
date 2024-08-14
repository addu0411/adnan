terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "5.61.0"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
  
}

provider "aws_instance" {
    ami = "#!/bin/bash
wget https://releases.hashicorp.com/terraform/1.9.4/terraform_1.9.4_linux_amd64.zip
sudo apt install zip -y
unzip terraform_1.9.4_linux_amd64.zip
cd /home/ubuntu/
sudo mv terraform /usr/local/bin
sudo rm -rfv terraform_1.9.4_linux_amd64.zip
"
    instance_type = "t2.micro"
    key_name = "aws_ash"

}

depends_on = [

    aws_key_pair.adnan
]

provider "aws_key_pair" "adnan" {
  key_name = "aws_ash"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOWr1hGHRIUp51Zk7p8x/WP71g+6RKN3npw6csZZ0G20"
}