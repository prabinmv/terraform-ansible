module "ec2" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.2.0"
  
  name = "ec2-instance"
  description = "Security group ssh port open for all"
  vpc_id = module.vpc.vpc_id
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules = ["ssh-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 9200
      to_port     = 9200
      protocol    = "tcp"
      description = "Elastic search Port"
      cidr_blocks = "0.0.0.0/0"
    },

    {
      from_port   = 5043
      to_port     = 5044
      protocol    = "tcp"
      description = "Logistash Port"
      cidr_blocks = "0.0.0.0/0"
    },

    {
      from_port   = 5601
      to_port     = 5601
      protocol    = "tcp"
      description = "Logistash Port"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
  egress_rules = ["all-all"]
  tags = local.common_tags
}