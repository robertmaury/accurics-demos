resource "aws_security_group" "aws-demo-security-group" {
  name   = "${var.name}-aws-demo"
  vpc_id = aws_vpc.aws-demo.id

  tags = {
    Name = "${var.name}-aws-demo"
  }

  ingress {
    to_port     = 22
    from_port   = 22
    protocol    = "tcp"
    cidr_blocks = ["10.1.1.1/32"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
