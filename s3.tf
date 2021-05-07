# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create AWS S3 Bucket with Terraform
resource "aws_s3_bucket" "tuffnertest" {
  bucket = "tuffner-tf-test-bucket-1"
  acl    = "private"
  
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "aws:kms"
      }
    }
  }
}
