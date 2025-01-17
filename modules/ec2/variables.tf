# modules/ec2-instance/variables.tf

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
}

variable "instance_type" {
  description = "Type of EC2 instance"
  type        = string
}

variable "instance_name" {
  description = "Name tag for the EC2 instance"
  type        = string
}

variable "subnet_id" {
  description = "ID of the subnet where the instance will be deployed"
  type        = string
}
