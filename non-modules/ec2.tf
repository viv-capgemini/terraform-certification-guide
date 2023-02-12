resource "aws_instance" "ec2_instance" {
  instance_type   = "t2.micro"
  ami             = "ami-0aaa5410833273cfe"
  user_data       = file("userdata.tpl")
  vpc_security_group_ids = [aws_security_group.public.id]
  tags = {
    Name = "Web-Server"
  }
}