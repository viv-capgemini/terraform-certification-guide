### Security Group Terraform module
## Terraform module which creates Security Group rules and group resources on AWS.

## Usage

See examples directory for working examples to reference:
```hcl
module "sg_module" {
        source = "./modules/security_group/"
        env="dev"
}
```