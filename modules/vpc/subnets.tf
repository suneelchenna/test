resource "aws_subnet" "public" {
  count             = length(var.public_subnet_cidrs)
  vpc_id            = module.vpc_services.vpc_id
  cidr_block        = var.public_subnet_cidrs[count.index]
  availability_zone = "us-west-1a" // Change this to your desired AZ
}

resource "aws_subnet" "private" {
  count             = length(var.private_subnet_cidrs)
  vpc_id            = module.vpc_services.vpc_id
  cidr_block        = var.private_subnet_cidrs[count.index]
  availability_zone = "us-west-1b" // Change this to your desired AZ
}
