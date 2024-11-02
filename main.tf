provider "aws" {
  region = local.region
}

data "aws_availability_zones" "available" {}

locals {
  name   = "group9-${basename(path.cwd)}"
  region = "us-east-1"

  vpc_cidr = "10.0.0.0/16"
  azs      = slice(data.aws_availability_zones.available.names, 0, 1)

  tags = {
    tag    = local.name
  }
}

################################################################################
# VPC Module
################################################################################

module "vpc" {
  source = "./module/vpc"

  name = local.name
  cidr = local.vpc_cidr

  azs                 = local.azs
  private_subnets     = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 8, k)]
  public_subnets      = [for k, v in local.azs : cidrsubnet(local.vpc_cidr, 8, k + 4)]


  single_nat_gateway = true
  enable_nat_gateway = true

  tags = local.tags
}

module "security_groups" {
  source = "./module/security_group"
  vpc_id = module.vpc.vpc_id
  
}

module "ec2"{
  source = "./module/ec2"
  ami_id = "ami-0e86e20dae9224db8"
  key_name = "test2"
  public_subnet_id = module.vpc.public_subnets[0]
  private_subnet_id = module.vpc.private_subnets[0]
  public_sg = module.security_groups.public_security_group_id
  private_sg = module.security_groups.private_security_group_id
}