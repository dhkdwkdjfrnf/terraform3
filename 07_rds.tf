resource "aws_db_instance" "joon_mydb" {
  allocated_storage      = 20
  storage_type           = var.sto_type
  engine                 = var.mysql
  engine_version         = "8.0"
  instance_class         = "db.${var.ins_t2}"
  name                   = var.mydb
  identifier             = var.mydb
  username               = "admin"
  password               = "It12345!"
  parameter_group_name   = "default.mysql8.0"
  availability_zone      = "${var.region}${var.ava_zone[0]}"
  db_subnet_group_name   = aws_db_subnet_group.joon_dbsg.id
  vpc_security_group_ids = [aws_security_group.joon_sg.id]
  skip_final_snapshot    = true
  tags = {
    "Name" = "${var.name}-db"
  }
}

resource "aws_db_subnet_group" "joon_dbsg" {
  name       = "${var.name}-dbsg"
  subnet_ids = [aws_subnet.joon_pridb[0].id, aws_subnet.joon_pridb[1].id]
}
