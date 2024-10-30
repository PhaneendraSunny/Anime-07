# modules/vpc/main.tf

resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "MainVPC"
  }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[0]

  tags = {
    Name = "PublicSubnet"
  }
}

data "aws_availability_zones" "available" {}

output "public_subnet_id" {
  value = aws_subnet.public.id
}
