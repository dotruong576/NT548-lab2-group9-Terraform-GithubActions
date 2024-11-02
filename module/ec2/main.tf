resource "aws_instance" "public" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet_id
  key_name      = var.key_name
  security_groups = [var.public_sg]

  tags = {
    Name = "PublicInstance"
  }
}

resource "aws_instance" "private" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = var.private_subnet_id
  key_name      = var.key_name
  security_groups = [var.private_sg]

  tags = {
    Name = "PrivateInstance"
  }
}