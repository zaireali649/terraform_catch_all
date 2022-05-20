terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  } 
  required_version = ">= 0.14.9"
}

provider "aws" {
	region = "us-east-1"
}

resource "aws_security_group" "security_group" {
  name        = "ExampleAppServerSecurityGroup"
  vpc_id      =  var.sg_vpc_id

  ingress {
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = var.app_server_tag
  }
}

resource "aws_instance" "app_server" {
  ami           = var.ec2_ami
  instance_type = var.ec2_instance_type
  vpc_security_group_ids = [aws_security_group.security_group.id]
  user_data = file("build_apache.sh")

  tags = {
    Name = var.app_server_tag
  }
}