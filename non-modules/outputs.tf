output "public_dns" {
  value = aws_instance.ec2_instance.public_dns
}

output "aws_security_group_id" {
  value = aws_security_group.public.id
}