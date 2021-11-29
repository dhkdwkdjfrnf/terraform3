resource "aws_internet_gateway" "joon_ig" {
  vpc_id = aws_vpc.joon_vpc.id

  tags = {
    "Name" = "${var.name}-ig"
  }
}

resource "aws_route_table" "joon_rt" {
  vpc_id = aws_vpc.joon_vpc.id

  route {
    cidr_block = var.cidr_route
    gateway_id = aws_internet_gateway.joon_ig.id
  }

  tags = {
    "Name" = "${var.name}-rt"
  }
}

resource "aws_route_table_association" "joon_igas_pub" {
  count          = 2
  subnet_id      = aws_subnet.joon_pub[count.index].id
  route_table_id = aws_route_table.joon_rt.id
}
