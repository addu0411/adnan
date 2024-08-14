terraform {
  required_providers {
    source = "hashicrop/aws"
    version = "5.61.0"
  }
}
provider "aws" {

    region = "ap-south-1"
  
}

provider "aws_instance" {

    ami = ""
    instance_type=""
    key_name=""

  
}

depends_on = [

    aws_key_pair.roy
]

provider "aws_key_pair" "roy" {

    key_name = "vikas"
    public_key ="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDtkSj2VOFB/PDJCZNSualWNxf0x+DDYe88D44se3M0"
  
}
