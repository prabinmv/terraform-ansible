resource "aws_eip" "lb" {
  instance = module.ec2.id
  domain   = "vpc"
}
