resource "aws_instance" "ec2_instance" {
  instance_type   = var.instance_type
  ami             = var.instance_ami
  user_data       = file("userdata.tpl")
  vpc_security_group_ids = [var.vpc_security_group_ids] 
  tags = {
    Name = "${var.env}-Web-Server"
  }
}