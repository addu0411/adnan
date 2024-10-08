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

resource "aws_instance" "this" {

    ami = "ami-0ad21ae1d0696ad58"
  instance_type = "t2.micro"
  key_name = "suyash"
  depends_on = [ 

    aws_key_pair.opskey
   ]
}
resource "aws_key_pair" "opskey" {
  key_name = "suyash"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJRsU8Us0JQXcHyNgv7rvt7Un9h/viGmV4/cfWTrKXvU"
}