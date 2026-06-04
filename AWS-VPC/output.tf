output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "security_group_id" {
  value = aws_security_group.web_sg.id
}

output "route_table_id" {
  value = aws_route_table.public_rt.id
}