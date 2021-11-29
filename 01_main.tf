provider "aws" {
  region = var.region
}

resource "aws_key_pair" "joon_key" {
  key_name   = var.key
  public_key = file("../../.ssh/joon-key.pub")
}

resource "aws_vpc" "joon_vpc" {
  cidr_block           = var.cidr_main
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = {
    "Name" = "${var.name}-vpc"
  }
}

# 가용 영역 a의 public subnet
resource "aws_subnet" "joon_pub" {
  count             = length(var.pub_sub) #2
  vpc_id            = aws_vpc.joon_vpc.id
  cidr_block        = var.pub_sub[count.index]
  availability_zone = "${var.region}${var.ava_zone[count.index]}"
  tags = {
    "Name" = "${var.name}-pub${var.ava_zone[count.index]}"
  }
}

resource "aws_subnet" "joon_pri" {
  count             = 2
  vpc_id            = aws_vpc.joon_vpc.id
  cidr_block        = var.pri_sub[count.index]
  availability_zone = "${var.region}${var.ava_zone[count.index]}"
  tags = {
    "Name" = "${var.name}-pri${var.ava_zone[count.index]}"
  }
}

resource "aws_subnet" "joon_pridb" {
  count             = length(var.pri_subdb) #2
  vpc_id            = aws_vpc.joon_vpc.id
  cidr_block        = var.pri_subdb[count.index]
  availability_zone = "${var.region}${var.ava_zone[count.index]}"
  tags = {
    "Name" = "${var.name}-pridb${var.ava_zone[count.index]}"
  }
}
