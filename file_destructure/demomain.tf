terraform {

    required_providers {

    aws = {

        source ="harshicop.io/aws"
        version ="5.61.0"

    }
  
  }

}

provider "aws" {

region = var.region

}

resource "aws_in" "name" {
  
}