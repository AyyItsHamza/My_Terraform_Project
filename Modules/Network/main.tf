module "s3" {
  source = "../modules/s3"
  bucket_name = "example-bucket-name"
}

resource "aws_vpc" "example" {
  cidr_block = var.vpc_cidr
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "public" {
  count = length(var.public_subnet_cidr_blocks)
  vpc_id     = aws_vpc.example.id
  cidr_block = var.public_subnet_cidr_blocks[count.index]
  availability_zone = var.availability_zones[count.index]
  map_public_ip_on_launch = true
  tags = {
    Name = "Public Subnet ${count.index}"
  }
}

resource "aws_subnet" "private" {
  count = length(var.private_subnet_cidr_blocks)
  vpc_id     = aws_vpc.example.id
  cidr_block = var.private_subnet_cidr_blocks[count.index]
  availability_zone = var.availability_zones[count.index]
  tags = {
    Name = "Private Subnet ${count.index}"
  }
}

resource "aws_security_group" "example" {
  name_prefix = "example-sg-"
  description = "Example security group"
  vpc_id = aws_vpc.example.id
}

# Define any security group rules here
