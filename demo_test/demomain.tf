terraform {

    required_providers {

    aws = {
        source ="hashicorp/aws"
        version ="5.61.0"

    }
  
  }

}

provider "aws" {

region = var.region

}

resource "aws_instance" "ak" {
  

     ami                 = var.ami
     instance_type = var.instance_type
    key_name            = var.key_name
  
}
