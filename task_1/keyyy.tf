terraform {
  required_providers "aws" {
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

resource "aws_instance" "instance2" {

ami = "ami-0ad21ae1d0696ad58"

instance_type = "t2.micro"

key_name = "aws_key"

depends_on = [

  aws_key_pair.roy

]

}
resource "aws_key_pair" "roy" {
  key_name   = "vikas"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDtkSj2VOFB/PDJCZNSualWNxf0x+DDYe88D44se3M0"
}