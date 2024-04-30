variable "aws_region" {}
variable "vpc_name" {}
variable "vpc_private_subnets" {
  default = null
}
variable "vpc_public_subnets" {
  default = null
}
variable "vpc_cidr" {}
variable "vpc_second_cidr" {
  default = null
}
variable "airflow_name" {}
variable "aws_account" {}
variable "airflow_s3_bucket_arn" {}
variable "vpc_enable_nat_gateway" {
  default = true
}
variable "bucket_name" {}
variable "role_name" {}
variable "cluster_service_accounts" {}
variable "sqs_name" {}
variable "sqs_name_prefix" {}
variable "fifo_queue" {
  default = false
}
variable "deduplication_scope" {
  default = null
}
variable "fifo_throughput_limit" {
  default = null
}

