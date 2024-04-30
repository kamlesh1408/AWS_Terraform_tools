variable "aws_region" {
  default = "us-west-1"
  description = "aws region to deploy alb"
}

variable "alb_name" {
  default = "alb-test"
  description = "alb name"
}

variable "lb_type" {
  default = "application"
  description = "loadbalancer type"
}

variable "vpc_id" {
  default = "vpc-096c2ed925d3c781e"
  description = "vpc id"
}

variable "vpc_subnets" {
  default = ["subnet-0f3ffd7101b549705","subnet-0dadc14569c6fa1b5"]
  description = "alb vpc subnets"
}

variable "vpc_sgs" {
  default = []
  description = "alb vpc security groups"
}

variable "alb_access_logs" {
  default = {}
  description = "access logging configuration for load balancer"
}

variable "alb_target_groups" {
  default = []
  description = "target groups to be created"
}

variable "alb_https_listeners" {
  default = []
  description = "alb https listeners"
}

variable "alb_http_tcp_listeners" {
  default = []
  description = "alb http_tcp_listeners"
}

variable "alb_tags" {
  default = {}
  description = "alb tags"
}





