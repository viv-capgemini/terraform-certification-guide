variable "env" {
  description = "Enter the Environment Name"
  type = string
}

variable "instance_type" {
  description = "Enter the instance type"
  type = string  
}

variable "instance_ami" {
  description = "Enter the ami id"
  type = string  
}

variable "aws_region" {
  description = "AWS region"
  type = string
  default = "eu-west-2"
}
variable "vpc_security_group_ids" {
  description = "Security Group"
  type = string
}