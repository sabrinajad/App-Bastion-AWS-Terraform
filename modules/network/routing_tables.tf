resource "aws_route_table" "pub-rt" {
  vpc_id = aws_vpc.iti1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "pub-rt"
  }
}

resource "aws_route_table" "prv-rt" {
  vpc_id = aws_vpc.iti1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.mynat.id
  }

  tags = {
    Name = "prv-rt"
  }
}
resource "aws_route_table_association" "rt_public1" {
  subnet_id      = aws_subnet.pub1.id
  route_table_id = aws_route_table.pub-rt.id
}

resource "aws_route_table_association" "rt_public2" {
  subnet_id      = aws_subnet.pub2.id
  route_table_id = aws_route_table.pub-rt.id
}

resource "aws_route_table_association" "rt_private1" {
  subnet_id      = aws_subnet.prv1.id
  route_table_id = aws_route_table.prv-rt.id
}

resource "aws_route_table_association" "rt_private2" {
  subnet_id      = aws_subnet.prv2.id
  route_table_id = aws_route_table.prv-rt.id
}