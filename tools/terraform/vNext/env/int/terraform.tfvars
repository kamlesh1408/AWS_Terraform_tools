aws_region                = "us-west-2"
vpc_name                  = "testing_vpc"
vpc_cidr                  = "10.0.0.0/16"
vpc_private_subnets       = ["10.0.1.0/24", "10.0.2.0/24"]
vpc_public_subnets        = ["10.0.4.0/24", "10.0.5.0/24"]
aws_account               = "518861015603"
airflow_s3_bucket_arn     = "arn:aws:s3:::airflow-terraform-test1"
airflow_name              = "intairflow"

