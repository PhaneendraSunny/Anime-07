# modules/s3-bucket/variables.tf

variable "bucket_name" {
  description = "Name for the S3 bucket"
  type        = string
}

variable "environment" {
  description = "Environment tag for the S3 bucket"
  type        = string
}
