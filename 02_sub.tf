# 가용 영역 a의 public subnet
resource "aws_subnet" "joon_puba" {
  vpc_id            = aws_vpc.joon_vpc.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "joon-puba"
  }
}

resource "aws_subnet" "joon_pubc" {
  vpc_id            = aws_vpc.joon_vpc.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "joon-pubc"
  }
}

resource "aws_subnet" "joon_pria" {
  vpc_id            = aws_vpc.joon_vpc.id
  cidr_block        = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "joon-pria"
  }
}

resource "aws_subnet" "joon_pric" {
  vpc_id            = aws_vpc.joon_vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "joon-pric"
  }
}

resource "aws_subnet" "joon_pridba" {
  vpc_id            = aws_vpc.joon_vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "joon-pridba"
  }
}

resource "aws_subnet" "joon_pridbc" {
  vpc_id            = aws_vpc.joon_vpc.id
  cidr_block        = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "joon-pridbc"
  }
}
