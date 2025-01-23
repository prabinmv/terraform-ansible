module "ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.7.1"
  
  name = "single-instance"
  ami = data.aws_ami.ubuntu.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
  monitoring             = true
  vpc_security_group_ids = [module.ec2.security_group_id]
  subnet_id              = module.vpc.public_subnets[0]

  tags = local.common_tags

}