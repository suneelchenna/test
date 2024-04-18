variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
}

variable "subnet_cidr_blocks" {
  description = "List of CIDR blocks for the subnets"
  type        = list(string)
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
}

module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr_block
  subnets_cidr = var.subnet_cidr_blocks
  azs         = var.availability_zones
}
