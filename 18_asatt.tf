resource "aws_autoscaling_attachment" "joon_asatt" {
  autoscaling_group_name = aws_autoscaling_group.joon_atsg.id
  alb_target_group_arn = aws_lb_target_group.joon_albtg.arn
}