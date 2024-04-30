variable "aws_region" {
  default = "us-west-2"
  description = "aws_region"
}

variable "name" {
  default = "mytest"
  description = "This is the human-readable name of the queue"
}


variable "name_prefix" {
  default = "Terraform"
  description = "A unique name beginning with the specified prefix"
}


variable "fifo_queue" {
  default = false
  description = "Boolean designating a FIFO queue"
}

variable "deduplication_scope" {
  default = "messageGroup"
  description = "Specifies whether message deduplication occurs at the message group or queue level"
}

variable "fifo_throughput_limit" {
  default = "perMessageGroupId"
  description = "Specifies whether the FIFO queue throughput quota applies to the entire queue or per message group"
}


