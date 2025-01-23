module "security-group" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.3.0"
  
  name        = "eks-secgrp"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id      = module.vpc.vpc_id
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules = ["all-all"]
  egress_rules = ["all-all"]
}