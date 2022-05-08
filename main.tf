module "instance"{
    source = "./ec2"

    region = var.region
    ami = var.ami
    instance_type = var.instance_type
    tag_name = var.tag_name
}