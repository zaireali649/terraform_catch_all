variable "region" {
    type = string
    default = "us-east-1"
}

variable "ami" {
    type = string
    default = "ami-09e67e426f25ce0d7"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tag_name" {
    type = string
    default = "ExampleAppServer"
}

variable "sg_tag_name" {
    type = string
    default = "ExampleAppServer"
}

variable "sg_name" {
    type = string
    default = "ExampleAppServerSecurityGroup"
}

variable "sg_vpc_id" {
    type = string
    default = "vpc-0a9ee577"
}

variable "vpc_security_group_ids" {
    type = any
    default = []
}

variable "user_data" {
    type = string
    default = ""
}
