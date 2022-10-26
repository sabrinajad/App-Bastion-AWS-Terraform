resource "aws_vpc" "iti1" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "iti1"
  }
}