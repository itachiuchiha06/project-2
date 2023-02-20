 # Creating 1st EC2 instance in public subnet
resource "aws_instance" "project_2" {
  ami                         = "ami-0557a15b87f6559cf"
  instance_type               = "t2.micro"
  key_name                    = "RAM"
  vpc_security_group_ids      = [aws_security_group.sai_sg.id]
  subnet_id                   = aws_subnet.ram_pub_sun.id
  associate_public_ip_address = true
  user_data                   = file("data.sh")
  tags = {
    Name = "project"
  }
}

