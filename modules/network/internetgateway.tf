resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.iti1.id

  tags = {
    Name = "Internet"
  }
}