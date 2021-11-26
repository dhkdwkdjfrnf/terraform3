resource "aws_ami_from_instance" "joon_ami" {
  name = "joon-ami"
  source_instance_id = aws_instance.joon_web.id
  depends_on = [
    aws_instance.joon_web
  ]
}