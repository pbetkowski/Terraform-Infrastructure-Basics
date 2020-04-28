resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = var.vpc_main_name
    Terraform = true
  }
}


resource "aws_subnet" "private_subnet_paris_a" {
  cidr_block = "10.0.1.0/24"
  vpc_id = aws_vpc.main.id
  map_public_ip_on_launch = true
  tags = {
    Name = var.subnet_paris_a
    Terraform = true
  }

  availability_zone = "eu-west-3a"
}

resource "aws_subnet" "private_subnet_paris_b" {
  cidr_block = "10.0.2.0/24"
  vpc_id = aws_vpc.main.id
  map_public_ip_on_launch = true

  tags = {
    Name = var.subnet_paris_b
    Terraform = true
  }

  availability_zone = "eu-west-3b"
}
