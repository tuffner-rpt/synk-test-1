# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create AWS S3 Bucket with Terraform
resource "aws_s3_bucket" "tuffnertest" {
  bucket = "tuffner-tf-test-bucket-1"
  acl    = "private"
  
  versioning = {
    enabled = true

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
