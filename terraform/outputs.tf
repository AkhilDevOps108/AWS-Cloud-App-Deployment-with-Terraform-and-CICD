output "s3_bucket_name" {
  value = aws_s3_bucket.demo_bucket.id
  description = "S3 bucket created for demo"
}
