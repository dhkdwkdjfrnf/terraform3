resource "aws_route_table" "joon_rt" {
  vpc_id = aws_vpc.joon_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.joon_ig.id
  }

  tags = {
    "Name" = "joon-rt"
  }
}
