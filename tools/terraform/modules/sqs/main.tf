module "sqs" {
  source  = "terraform-aws-modules/sqs/aws"
  version = "3.3.0"
  
  deduplication_scope = var.fifo_queue != false ? var.deduplication_scope: null
  fifo_throughput_limit = var.fifo_queue != false ? var.fifo_throughput_limit: null
  kms_master_key_id = aws_kms_key.this.id
  
  fifo_queue = var.fifo_queue

}


resource "aws_kms_key" "this" {}
