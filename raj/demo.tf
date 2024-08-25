terraform {
  required_providers {
    aws ={
        source ="harshicorp/aws"
        version = "5.61.0"
    }
  }
}

provider "aws" {
    region = "ap-south-1"
  
}

provider "aws_instance" {
  ami ="ami-0522ab6e1ddcc7055"
  instance_type ="t2.micro"
  key_name ="FINAL"
}