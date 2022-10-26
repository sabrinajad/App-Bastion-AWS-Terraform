resource "aws_subnet" "pub1" {
  vpc_id     = aws_vpc.iti1.id
  cidr_block = "10.0.1.0/24"
  # count=var.count_subnet
   availability_zone = var.the_avzone1
  tags = {
    Name = "public1"
  }
}

resource "aws_subnet" "pub2" {
  vpc_id     = aws_vpc.iti1.id
  cidr_block = "10.0.2.0/24"
  availability_zone = var.the_avzone2
  # count=var.count_subnet
  tags = {
    Name = "public2"
  }
}
resource "aws_subnet" "prv1" {
  vpc_id     = aws_vpc.iti1.id
  cidr_block = "10.0.3.0/24"
  availability_zone = var.the_avzone1
  # count=var.count_subnet
  tags = {
    Name = "private1"
  }
}
resource "aws_subnet" "prv2" {
  vpc_id     = aws_vpc.iti1.id
  cidr_block = "10.0.4.0/24"
  availability_zone = var.the_avzone2
  # count = var.count_subnet 
  tags = {
    Name = "privat2"
  }
}