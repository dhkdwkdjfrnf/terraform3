resource "aws_lb" "joon_alb" {
  name               = "joon-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.joon_sg.id]
  subnets            = [aws_subnet.joon_puba.id, aws_subnet.joon_pubc.id]
  tags = {
    "Name" = "joon-alb"
  }
}
