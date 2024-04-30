data "aws_availability_zones" "available" {}

module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.2.0"

  name                  = var.vpc_name
  cidr                  = var.vpc_cidr
  secondary_cidr_blocks = var.vpc_second_cidr != null ? [var.vpc_second_cidr] : []
  azs                   = data.aws_availability_zones.available.names
  private_subnets       = var.vpc_private_subnets != null ? var.vpc_private_subnets : []
  public_subnets        = var.vpc_public_subnets != null ? var.vpc_public_subnets : []
  enable_nat_gateway    = var.vpc_enable_nat_gateway
  single_nat_gateway    = var.vpc_single_nat_gateway
  enable_dns_hostnames  = var.vpc_enable_dns_hostnames
  tags                  = var.vpc_tags
  public_subnet_tags    = var.vpc_public_subnet_tags
  private_subnet_tags   = var.vpc_private_subnet_tags

}
