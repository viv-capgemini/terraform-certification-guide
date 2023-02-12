provider "aws" {
  region = "eu-west-2"
}

terraform {
  required_version = ">= 0.13.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3"
    }
  }
}

variable "env" {
  description = "Enter the Environment Name"
  type = string
}

resource "aws_security_group" "public" {
  name        = "${var.env}-sg"
  description = "Public internet access"

  tags = {
    Name        = "${var.env}-sg"
    Role        = "public"
    Project     = "test.io"
    Environment = var.env
    ManagedBy   = "terraform"
  }
}

resource "aws_security_group_rule" "public_out" {
  type              = "egress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.public.id
}

resource "aws_security_group_rule" "public_in_ssh" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.public.id
}

resource "aws_security_group_rule" "public_in_http" {
  type              = "ingress"
  from_port         = 80
  to_port           = 80
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.public.id
}
output "aws_security_group_id" {
  value = aws_security_group.public.id
}