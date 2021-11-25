resource "aws_eip" "joon_ngw_ip" {
  vpc = true
}

resource "aws_nat_gateway" "joon_ngw" {
  allocation_id = aws_eip.joon_ngw_ip.id
  subnet_id     = aws_subnet.joon_puba.id
  tags = {
    "Name" = "joon-ngw"
  }
}
