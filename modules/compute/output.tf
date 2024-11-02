output "WAN_IP" {
  value = aws_instance.main.public_ip
}