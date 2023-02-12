# provider "aws" {
#   region = "eu-west-2"
# }

# terraform {
#   required_version = ">= 0.13.1"

#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = ">= 4.20.0"
#     }
#   }
# }

resource "aws_instance" "ec2_instance" {
  instance_type   = "t2.micro"
  ami             = "ami-0aaa5410833273cfe"
  user_data       = file("userdata.tpl")
  vpc_security_group_ids = [aws_security_group.public.id]
  tags = {
    Name = "Web-Server"
  }
}

output "public_dns" {
  value = aws_instance.ec2_instance.public_dns
}