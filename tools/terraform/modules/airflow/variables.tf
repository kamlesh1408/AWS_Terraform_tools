variable "aws_account" {
  default = ""
}

variable "env_name" {
  default = ""
}

variable "igw_id" {
  default = ""
}

variable "vpc_private_subnets" {
  default = []
}

variable "aws_region" {
  default = ""
}

variable "bucket_arn" {
  default = ""
}

variable "vpc_id" {
  default = ""
}

variable "create_networking_config" {
  default = false
}

variable "webserver_access_mode" {
  default = "PUBLIC_ONLY"
}
