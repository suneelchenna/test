module "vpc" {
  source      = "./modules/vpc"
  vpc_cidr    = var.vpc_cidr_block
  subnets_cidr = var.subnet_cidr_blocks
  azs         = var.availability_zones
}
