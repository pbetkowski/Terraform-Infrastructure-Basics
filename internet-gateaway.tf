resource "aws_internet_gateway" "internet_gateaway" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "Main Internet Gateaway"
  }
}