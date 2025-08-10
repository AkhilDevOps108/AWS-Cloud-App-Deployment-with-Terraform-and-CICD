# aws-terraform-docker-demo

Demo repo: build Docker image, push to GitHub Container Registry, and provision an S3 bucket with Terraform via GitHub Actions.

## What it demonstrates
- Dockerfile for a Node.js app
- GitHub Actions: build & push image to GHCR; run Terraform to create AWS S3 bucket
- Terraform minimal IaC

## How to use
1. Create a GitHub repo and push these files to `main`.
2. In repo Settings → Actions → Workflow permissions: set **Read and write permissions**.
3. Add Secrets (Settings → Secrets → Actions):
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
   - `AWS_REGION` (e.g. `us-east-1`)
4. Edit `terraform/variables.tf` → change `s3_bucket_name` to a globally unique name.
5. Push to `main`. Actions will:
   - build Docker image and push to GHCR as `ghcr.io/<owner>/aws-terraform-docker-demo:latest`
   - run `terraform apply` to create the S3 bucket

## Next steps
- Extend Terraform to create EC2/ECR/EKS
- Update Actions to push to ECR or deploy image to EC2 / Kubernetes
