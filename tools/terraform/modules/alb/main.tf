module "alb" {
  source  = "terraform-aws-modules/alb/aws"
  version = "~> 6.0"

  name = var.alb_name

  load_balancer_type = var.lb_type

  vpc_id             = var.vpc_id
  subnets            = var.vpc_subnets
  security_groups    = var.vpc_sgs

  access_logs = var.alb_access_logs

  target_groups = var.alb_target_groups

  https_listeners = var.alb_https_listeners

  http_tcp_listeners = var.alb_http_tcp_listeners

  tags = var.alb_tags
}
