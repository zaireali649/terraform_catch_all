variable "ami" {
    type = string
    default = ""
}

variable "instance_type" {
    type = string
    default = ""
}

variable "tag_name" {
    type = string
    default = ""
}

variable "region" {
    type = string
    default = ""
}

variable "vpc_security_group_ids" {
    type = any
    default = []
}

variable "user_data" {
    type = string
    default = ""
}