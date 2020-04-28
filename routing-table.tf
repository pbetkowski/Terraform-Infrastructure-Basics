resource "aws_route_table" "main_routing_table" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateaway.id
  }
}

resource "aws_route_table_association" "route_table_assignation-paris_a" {
  route_table_id = aws_route_table.main_routing_table.id
  subnet_id = aws_subnet.private_subnet_paris_a.id
}

resource "aws_route_table_association" "route_table_assignation_paris_b" {
  route_table_id = aws_route_table.main_routing_table.id
  subnet_id = aws_subnet.private_subnet_paris_b.id
}