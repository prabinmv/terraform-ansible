module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "20.33.0"


  cluster_name    = local.cluster_name
  cluster_version = "1.31"

  subnet_ids = module.vpc.private_subnets

  tags = {
    cluster = "demo"
  }

  vpc_id = module.vpc.vpc_id

  eks_managed_node_group_defaults = {
    ami_type               = "AL2_x86_64"
    instance_types         = ["t3.medium"]
    vpc_security_group_ids = [aws_security_group.all_worker_mgmt.id]
  }

  eks_managed_node_groups = {

    node_group = {
      min_size     = 2
      max_size     = 4
      desired_size = 2
    }
  }

}