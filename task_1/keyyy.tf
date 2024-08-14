terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.61.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "ap-south-1"
}

#EC2 instance details

resource "aws_instance" "instance1" {

ami = "ami-0ad21ae1d0696ad58"

instance_type = "t2.micro"

key_name = "aws_key"

depends_on = [

  aws_key_pair.devkey

]

}
resource "aws_key_pair" "devkey" {
  key_name   = "aws_key"
  public_key = ""
}