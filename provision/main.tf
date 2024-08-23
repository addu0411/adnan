resource "aws_instance" "this_aws_instance" {
  ami                   = "ami-0522ab6e1ddcc7055"
  vpc_security_group_ids = ["sg-0b0e77d9a4f54b0d0"]
  key_name              = "roy"
  instance_type         = "t2.micro"

  # Provisioner to write the private IP to a local file
  provisioner "local-exec" {
    command = "echo ${self.private_ip} >> private_ips.txt"
  }

  # Connection details for remote-exec
  connection {
    type        = "ssh"
    user        = "ubuntu"
    private_key = file("roy.pem")  # Use file() to read the private key
    host        = self.public_ip
  }

  # Provisioner to install and configure Nginx
  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",               # Update package index
      "sudo apt install nginx -y",        # Install Nginx
      "sudo systemctl start nginx",       # Start Nginx service
      "sudo systemctl enable nginx"       # Enable Nginx to start on boot
    ]
  }
}