resource "aws_ami_from_instance" "joon_ami" {
  name               = "${var.name}-ami"
  source_instance_id = aws_instance.joon_web.id
  depends_on = [
    aws_instance.joon_web
  ]
}

resource "aws_launch_configuration" "joon_lacf" {
  name                 = "${var.name}-lacf"
  image_id             = aws_ami_from_instance.joon_ami.id
  instance_type        = var.ins_t2
  iam_instance_profile = var.iam_role
  security_groups      = [aws_security_group.joon_sg.id]
  key_name             = var.key
  user_data            = <<-EOF
                #!/bin/bash
                systemctl start httpd
                systemctl enable httpd
                EOF
}

resource "aws_placement_group" "joon_pg" {
  name     = "${var.name}-pg"
  strategy = var.strategy
}

resource "aws_autoscaling_group" "joon_atsg" {
  name                      = "${var.name}-atsg"
  min_size                  = 2
  max_size                  = 10
  health_check_grace_period = 60
  health_check_type         = "EC2"
  desired_capacity          = 2
  force_delete              = true
  launch_configuration      = aws_launch_configuration.joon_lacf.name
  #placement_group           = aws_placement_group.joon_pg.id
  vpc_zone_identifier = [aws_subnet.joon_pub[0].id, aws_subnet.joon_pub[1].id]
}

resource "aws_autoscaling_attachment" "joon_asatt" {
  autoscaling_group_name = aws_autoscaling_group.joon_atsg.id
  alb_target_group_arn   = aws_lb_target_group.joon_albtg.arn
}
