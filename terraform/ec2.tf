resource "aws_instance" "webserver6" {
  ami                    = var.linux_ami_id
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private_subnet2.id
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  key_name               = aws_key_pair.ssh_key.key_name
  associate_public_ip_address = true
  tags = {
    Name = "Webserver6"
  }
}

resource "aws_key_pair" "ssh_key" {
  key_name   = "linux"
  public_key = file("linux.pub")
}