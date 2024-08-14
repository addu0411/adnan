terraform {
  cloud {
    organization = "<YOUR TERRAFORM CLOUD ORGANIZATION NAME>"
    workspaces {
        name = "<YOUR WORKSPACE NAME>"
    }
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
       version = "= 4.27.0"
    }
  }
}


provider "aws" {
  region = "us-east-2"
}

#EC2 instance details

resource "aws_instance" "instance1" {

ami = "ami-0568773882d492fc8"

instance_type = "t2.micro"

vpc_security_group_ids = [aws_security_group.main.id]

key_name = "aws_key"

tags = {

Name = "linux"

}

depends_on = [

  aws_key_pair.devkey

]

}


resource "aws_security_group" "main" {
  egress = [
    {
      cidr_blocks      = [ "0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
 ingress                = [
   {
     cidr_blocks      = [ "0.0.0.0/0", ]
     description      = ""
     from_port        = 22
     ipv6_cidr_blocks = []
     prefix_list_ids  = []
     protocol         = "tcp"
     security_groups  = []
     self             = false
     to_port          = 22
  }
  ]
}

resource "aws_key_pair" "devkey" {
  key_name   = "aws_key"
  public_key = "PASTE YOUR SAVED .PUB KEY HERE"
}