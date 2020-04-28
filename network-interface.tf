resource "aws_network_interface" "network_interface_paris_a" {
  subnet_id = aws_subnet.private_subnet_paris_a.id
}