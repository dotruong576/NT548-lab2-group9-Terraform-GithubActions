resource "aws_security_group" "public_ec2_sg" {
  name        = "public-ec2-sg"
  description = "Allow SSH from a specific IP"
  vpc_id      = var.vpc_id 

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["171.239.92.45/32"] 
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" 
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_security_group" "private_ec2_sg" {
  name        = "private-ec2-sg"
  description = "Allow connections from Public EC2"
  vpc_id      = var.vpc_id

  ingress {
    description       = "Allow SSH from Public EC2"
    from_port         = 22
    to_port           = 22
    protocol          = "tcp"
    security_groups   = [aws_security_group.public_ec2_sg.id] 
  }

  egress {
    description = "Allow all outbound traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" 
    cidr_blocks = ["0.0.0.0/0"]
  }
}
