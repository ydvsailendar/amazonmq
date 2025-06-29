resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "11.0.0.0/28"
}
