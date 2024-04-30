module "vnext_vpc" {
  source = "../../modules/vpc"
  aws_region              = var.aws_region
  vpc_name                = var.vpc_name
  vpc_cidr                = var.vpc_cidr
  vpc_second_cidr         = var.vpc_second_cidr
  vpc_public_subnets      = var.vpc_public_subnets
  vpc_private_subnets     = var.vpc_private_subnets
  vpc_enable_nat_gateway  = var.vpc_enable_nat_gateway
}

module "vnext_airflow" {
  source = "../../modules/airflow"
  aws_account         = var.aws_account
  env_name            = var.airflow_name
  igw_id              = module.vnext_vpc.igw_id
  vpc_private_subnets = module.vnext_vpc.private_subnet_ids
  aws_region          = var.aws_region
  bucket_arn          = var.airflow_s3_bucket_arn
  vpc_id              = module.vnext_vpc.vpc_id
}

module "vnext_s3_bucket" {
  source = "../../modules/s3_bucket"
  bucket_name         = var.bucket_name
  
}

module "vnext_iam-eks-role" {
  source = "../../modules/iam-eks-role"
  aws_region        = var.aws_region
  role_name         = var.role_name
  cluster_service_accounts  = var.cluster_service_accounts

}

module "vnext_sqs_with_sse" {
  source = "../../modules/sqs"
  aws_region        = var.aws_region
  name              = var.sqs_name
  name_prefix       = var.sqs_name_prefix
  fifo_queue        = var.fifo_queue
  deduplication_scope = var.deduplication_scope
  fifo_throughput_limit = var.fifo_throughput_limit
}

