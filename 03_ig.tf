resource "aws_internet_gateway" "joon_ig" {
  vpc_id = aws_vpc.joon_vpc.id

  tags = {
    "Name" = "joon-ig"
  }
}