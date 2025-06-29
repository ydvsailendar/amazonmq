resource "aws_vpc" "main" {
  cidr_block           = "11.0.0.0/26"
  enable_dns_support   = true
  enable_dns_hostnames = true
}
