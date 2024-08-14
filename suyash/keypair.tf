terraform {
  required_providers {
    aws = {
        source = "harshicrop/aws"
        version = "5.61.0"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" {

    ami = ""
  instance_type = "t2.micro"
  key_name = "suyash"
  depends_on = [ 

    aws_key_pair.opskey
   ]
}
resource "aws_key_pair" "opskey" {
  key_name = "suyash"
  public_key = ""
}