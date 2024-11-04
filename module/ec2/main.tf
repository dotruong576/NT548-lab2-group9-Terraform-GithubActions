resource "aws_instance" "public" {
  ami           = var.ami_id
  instance_type = "t2.micro"
  subnet_id     = var.public_subnet_id
  key_name      = var.key_name
  security_groups = [var.public_sg]
  # checkov:skip=CKV_AWS_126
  # checkov:skip=CKV_AWS_135
  # checkov:skip=CKV_AWS_79
  # checkov:skip=CKV_AWS_8
  # checkov:skip=CKV2_AWS_41

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
  # checkov:skip=CKV_AWS_126
  # checkov:skip=CKV_AWS_135
  # checkov:skip=CKV_AWS_79
  # checkov:skip=CKV_AWS_8
  # checkov:skip=CKV2_AWS_41

  tags = {
    Name = "PrivateInstance"
  }
}