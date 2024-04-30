output "vpc_id" {
  value = module.vpc.vpc_id
}

output "igw_id" {
 value = module.vpc.igw_id
}

output "private_subnet_ids"{
 value = module.vpc.private_subnets
}

output "public_subnet_ids"{
 value = module.vpc.public_subnets
}
