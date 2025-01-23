resource "aws_eip" "lb" {
  instance = module.ec2-instance.id
  domain   = "vpc"
}
