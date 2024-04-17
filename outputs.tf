output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc_services.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = module.vpc_services.public_subnet_ids
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = module.vpc_services.private_subnet_ids
}
