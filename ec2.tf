resource "aws_instance" "ec2_linux_instance" {
  ami = "ami-0bb607148d8cf36fb" //ubuntu 16.04
  instance_type = "t2.micro"
  key_name = "ubuntuKeyPar"
  //associate_public_ip_address = true - it is provided by elastic IP
  //private_ip = "10.0.1.10"
  subnet_id = aws_subnet.private_subnet_paris_a.id
  vpc_security_group_ids = [
    aws_security_group.http-security-group.id,
    aws_security_group.ssh-security-group.id
  ]

  user_data = data.template_cloudinit_config.nginx_install.rendered

  tags = {
    Name = "Ubuntu-16.0.4--Instance"
  }
}
