variable "aws_region" {
  default = "us-west-2"
  description = "aws_region"
}

variable "cluster_service_accounts" {
  description = "EKS cluster and k8s ServiceAccount pairs. example: { "inteks"  = ["default:my-app", "canary:my-app"] }"
  type        = map(list(string))
  default     = {}
}

variable "role_name" {
  default = "my-app"
  description = "Name for the IAM role"
}

