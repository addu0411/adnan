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

pr