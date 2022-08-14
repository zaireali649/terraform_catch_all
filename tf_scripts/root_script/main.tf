module "instance"{
    source = "./ec2"

    region = var.region
    ami = var.ami
    instance_type = var.instance_type
    tag_name = var.tag_name
    vpc_security_group_ids = [module.sg.sg_id]
    user_data = file("build_apache.sh")
}

module "sg"{
    source = "./security_group"
    
    sg_vpc_id = var.sg_vpc_id
    sg_name = var.sg_name
    sg_tag_name = var.sg_tag_name
}

