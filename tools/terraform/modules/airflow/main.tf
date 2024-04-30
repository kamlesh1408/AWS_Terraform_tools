module "airflow" {
  source = "idealo/mwaa/aws"
  version = "0.2.3"

  account_id = var.aws_account
  environment_name = var.env_name
  internet_gateway_id = var.igw_id
  private_subnet_ids = var.vpc_private_subnets
  region = var.aws_region
  source_bucket_arn = var.bucket_arn
  vpc_id = var.vpc_id
  create_networking_config = var.create_networking_config
  webserver_access_mode = var.webserver_access_mode
}
