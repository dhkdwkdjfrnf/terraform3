resource "aws_route_table_association" "joon_igas_puba" {
  subnet_id = aws_subnet.joon_puba.id
  route_table_id = aws_route_table.joon_rt.id
}

resource "aws_route_table_association" "joon_igas_pubc" {
  subnet_id = aws_subnet.joon_pubc.id
  route_table_id = aws_route_table.joon_rt.id
}