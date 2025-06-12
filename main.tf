provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  bucket        = var.bucket_name
  force_destroy = var.force_destroy

  tags = {
    Name        = var.bucket_tag_name
    Environment = var.environment
  }
}
