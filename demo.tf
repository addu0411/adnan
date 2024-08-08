provider "aws" {
  region = "ap-south-1"

}

resource "aws_instance" "instance1" {
  ami           = "ami-0ad21ae1d0696ad58"
  instance_type = "t2.micro"

  tags = {
    name = "my-demo-instance"
  }
}