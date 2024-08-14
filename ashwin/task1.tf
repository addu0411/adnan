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
    ami = ""
    instance_type = "t2.micro"
    key_name = "aws_ash"

}

depends_on = [

    aws_key_pair.adnan
]

provider "aws_key_pair" "adnan" {
  key_name = 
}