# main.tf

provider "aws" {
  region = var.region
}

# VPC module
module "vpc" {
  source            = "./modules/vpc"
  vpc_cidr          = var.vpc_cidr
  public_subnet_cidr = var.public_subnet_cidr
}

# EC2 Instance module
module "ec2_instance" {
  source        = "./modules/ec2"
  ami_id        = var.ami_id
  instance_type = var.instance_type
  instance_name = var.instance_name
  subnet_id     = module.vpc.public_subnet_id # Using the public subnet from VPC module
}

# S3 Bucket module
module "s3_bucket" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
  environment = var.environment
}
