resource "aws_lb_target_group_attachment" "joon_albtgatt" {
  target_group_arn = aws_lb_target_group.joon_albtg.arn
  target_id        = aws_instance.joon_web.id
  port             = 80
}
