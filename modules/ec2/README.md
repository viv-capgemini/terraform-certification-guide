### Webserver Terraform module
## Terraform module which creates EC2 instance resources on AWS.

## Usage

See examples directory for working examples to reference:
```hcl
module "ec2_module" {
        source = "./modules/ec2/"
        env = "dev"
        vpc_security_group_ids = module.sg_module.aws_security_group_id
        instance_ami = "ami-0aaa5410833273cfe"
        instance_type = "t2.nano"
}
```