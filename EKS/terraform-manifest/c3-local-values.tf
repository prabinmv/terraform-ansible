resource "random_string" "suffix" {
  length           = 8
  special          = true
}

locals {
  cluster_name = "eks-${random_string.suffix.result}"
}