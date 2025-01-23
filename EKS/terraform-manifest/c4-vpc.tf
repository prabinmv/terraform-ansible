module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.17.0"

  name = "EKS-VPC"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-2a"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

  single_nat_gateway = true

  enable_nat_gateway = true
  enable_vpn_gateway = true

  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
  }
}

