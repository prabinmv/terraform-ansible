variable "vpc_name" {
    description = "VPC Name"
    type = string
    default = "vpc-terraform"
}

variable "vpc_cidr_block" {
  description = "VPC CIDR Block"
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
  description = "VPC Availability zones"
  type = string
  default = "us-east-1a"
}

variable "vpc_public_subnets" {
   description = "VPC Public Subnets"
   type = string
   default = "10.0.101.0/24"
}
