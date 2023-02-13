provider "aws" {
	region = var.aws_region
}

module "ec2_module" {
        source = "./modules/ec2/"
        env = "dev"
        vpc_security_group_ids = module.sg_module.aws_security_group_id
        instance_ami = "ami-0aaa5410833273cfe"
        instance_type = "t2.nano"
}

module "sg_module" {
        source = "./modules/security_group/"
        env="dev"
}