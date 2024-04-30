module "iam" {
  source  = "terraform-aws-modules/iam/aws"
  version = "4.11.0"
}


module "iam_eks_role" {
  source    = "terraform-aws-modules/iam/aws//modules/iam-eks-role"
  role_name = var.role_name

  cluster_service_accounts = length(var.cluster_service_accounts) != 0 ? var.cluster_service_accounts : {}


  tags = {
    Name = "eks-role"
  }

  role_policy_arns = [
    "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
  ]
}

