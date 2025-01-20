variable "aws_region" {
  description = "Default reion"
  type = string
  default = "us-east-1"
}

variable "environment" {
  description = "Environment variable"
  type = string
  default = "dev"
}

variable "business_division" {
  description = "department"
  type = string
  default = "SAP"
}

variable "cluster-name" {
  default = "levelup-tf-eks-demo"
  type    = string
}