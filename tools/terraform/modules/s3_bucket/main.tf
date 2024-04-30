resource "aws_kms_key" "objects" {
  description             = "KMS key is used to encrypt bucket objects"
}


module "s3-bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "2.13.0"

  bucket        = var.bucket_name
  acl           = "private"
  force_destroy = true

 server_side_encryption_configuration = {
    rule = {
      apply_server_side_encryption_by_default = {
        kms_master_key_id = aws_kms_key.objects.arn
        sse_algorithm     = "aws:kms"
      }
    }
  }

}
