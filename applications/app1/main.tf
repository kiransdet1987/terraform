module "app1_s3"{
	source = "/root/modules/s3"
	bkt_name = "${var.app_name}-bkt1"
}
module "app1_vpc"{
	source = "/root/modules/vpc"
	vpc_cidr = var.vpc_cidr
	vpc_name = "${var.app_name}-vpc"
	igw_name = "${var.app_name}-igw"
	rtb_name = "${var.app_name}-rtb"
	sub_cidr = var.sub_cidr
	sub_name = "${var.app_name}-sub"
	sg_name = "${var.app_name}-sg"
}
module "app1_ec2" {
	source = "/root/modules/ec2"
	ami_id = var.ami_id
	instance_type = var.instance_type
	key_name = var.key_name
	ec2_name = "${var.app_name}-server"
	ec2_sub_id = module.app1_vpc.sub_id
}
