variable "aws_region" {
  default = "us-west-1"
  description = "aws region for deployment"
}

variable "vpc_name" {
  default = "test_vpc"
  description = "vpc name"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "vpc_second_cidr" {
  default = null
  description = "vpc secondary cidr"
}

variable "vpc_private_subnets" {
  default = null
  description = "vpc private subnets"
}

variable "vpc_public_subnets" {
  default = null
  description = "cluster vpc public subnets"
}

variable "vpc_enable_nat_gateway" {
  default = true
  description = "vpc enable net gateway"
}

variable "vpc_single_nat_gateway" {
  default = true
  description = "vpc single net gateway"
}

variable "vpc_enable_dns_hostnames" {
  default = true
  description = "vpc enable dns hostname"
}

variable "vpc_tags" {
  default = {}
  description = "vpc tags"
}

variable "vpc_public_subnet_tags" {
  default = {}
  description = "vpc public subnet tags"
}

variable "vpc_private_subnet_tags" {
  default = {}
  description = "vpc private subnet tags"
}

