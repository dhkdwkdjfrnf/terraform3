resource "aws_route_table_association" "joon_ngwass_pria" {
  subnet_id      = aws_subnet.joon_pria.id
  route_table_id = aws_route_table.joon_ngwrt.id
}

resource "aws_route_table_association" "joon_ngwass_pridba" {
  subnet_id      = aws_subnet.joon_pridba.id
  route_table_id = aws_route_table.joon_ngwrt.id
}

resource "aws_route_table_association" "joon_ngwass_pridbc" {
  subnet_id      = aws_subnet.joon_pridbc.id
  route_table_id = aws_route_table.joon_ngwrt.id
}
