module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.15.0"
  
  name = var.vpc_name
  cidr = var.vpc_cidr_block

  azs                 = [var.vpc_availability_zones]

  public_subnets      = [var.vpc_public_subnets]

 
  enable_dns_hostnames = true
  enable_dns_support   = true

  public_subnet_tags = {
    Type = "Public-subnet"
  }

  tags = local.common_tags
  vpc_tags = {
    Name = "VPC-DEV"
  }
}
