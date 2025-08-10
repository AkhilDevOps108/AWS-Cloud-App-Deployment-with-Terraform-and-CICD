variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-east-1"
}

variable "s3_bucket_name" {
  description = "Unique S3 bucket name (change before apply)"
  type        = string
  default     = "aws-terraform-docker-demo-akhil-12345" # change to unique name
}
