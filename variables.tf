variable "aws_region" {
  description = "AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "rss-aws-example-bucket"
}

variable "force_destroy" {
  description = "Whether to force bucket deletion even if not empty"
  type        = bool
  default     = true
}

variable "bucket_tag_name" {
  description = "Tag Name for the S3 bucket"
  type        = string
  default     = "FreeTier-Test-Bucket"
}

variable "environment" {
  description = "Environment tag for resources"
  type        = string
  default     = "Dev"
}
