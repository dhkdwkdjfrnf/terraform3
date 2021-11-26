resource "aws_launch_configuration" "joon_lacf" {
  name = "joon-lacf"
  image_id = aws_ami_from_instance.joon_ami.id
  instance_type = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups = [aws_security_group.joon_sg.id]
  key_name = "joon1-key"
  user_data =<<-EOF
                #!/bin/bash
                systemctl start httpd
                systemctl enable httpd
                EOF
}