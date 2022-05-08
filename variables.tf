variable "region" {
    type = string
    default = "us-east-1"
}

variable "ami" {
    type = string
    default = "ami-0022f774911c1d690"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "tag_name" {
    type = string
    default = "ExampleAppServerInstance"
}