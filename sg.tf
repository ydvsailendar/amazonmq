resource "aws_security_group" "mq" {
  name        = "mq-broker-sg"
  description = "Allow MQ traffic"
  vpc_id      = aws_vpc.main.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
