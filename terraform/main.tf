terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 4.0"
    }
  }
  required_version = ">= 1.3.0"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "demo_bucket" {
  bucket = var.s3_bucket_name
  acl    = "private"

  tags = {
    Name  = "aws-terraform-docker-demo-bucket"
    Owner = "Akhil"
  }
}
