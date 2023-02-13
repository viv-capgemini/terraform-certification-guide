output "instance_ip_addr" {
  value = module.ec2_module.public_dns
  description = "The public IP address of the main instance."
}

output "aws_security_group_id" {
  value = module.sg_module.aws_security_group_id
}