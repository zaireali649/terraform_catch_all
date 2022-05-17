variable "ec2_ami" {
    type = string
    default = "ami-09e67e426f25ce0d7"
}

variable "ec2_instance_type" {
    type = string
    default = "t2.micro"
}

variable "app_server_tag" {
    type = string
    default = "ExampleAppServer"
}

variable "sg_vpc_id" {
    type = string
    default = "vpc-0a9ee577"
}