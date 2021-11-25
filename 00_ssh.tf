resource "aws_key_pair" "joon_key" {
  key_name = "joon1-key"
  public_key = file("../../.ssh/joon-key.pub")
}