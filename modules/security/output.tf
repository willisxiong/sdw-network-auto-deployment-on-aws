output "internet_sg_id" {
  value = aws_security_group.internet_sg.id
}

output "mpls_sg_id" {
  value = aws_security_group.mpls_sg.id
}

output "lan_sg_id" {
  value = aws_security_group.lan_sg.id
}