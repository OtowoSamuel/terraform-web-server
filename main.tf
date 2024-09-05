provider "aws" {
  region = "us-east-1"  # Update to your preferred region
}

resource "aws_key_pair" "deployer_key" {
  key_name   = "deployer"
  public_key = file("/root/.ssh/id_rsa.pub")  # Path to your public key
}

resource "aws_security_group" "web_sg" {
  name_prefix = "terraform-web-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web_server" {
  ami           = "ami-0dba2cb6798deb6d8"  # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  key_name      = aws_key_pair.deployer_key.key_name
  security_groups = [aws_security_group.web_sg.name]

  tags = {
    Name = "Terraform-Web-Server"
  }
}
