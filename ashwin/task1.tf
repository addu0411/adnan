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
    ami = "ami-0ad21ae1d0696ad58"
    instance_type = "t2.micro"
    key_name = "aws_ash"

}
depends_on = [

  aws_key_pair.roy

]

provider "aws_key_pair" "adnan" {
  key_name = "aws_ash"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOWr1hGHRIUp51Zk7p8x/WP71g+6RKN3npw6csZZ0G20"
}