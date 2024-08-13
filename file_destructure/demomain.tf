terraform {

    required_providers {

    aws = {

        source ="harshicop.io/aws"
        version ="5.61.0"

    }
  
  }

}

provider "aws" {

    ami                 = var.ami
    key_name            = va
}