resource "aws_instance" "app_server" {
  ami           = var.ami
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids
  user_data = var.user_data

  tags = {
    Name = var.tag_name
  }
}