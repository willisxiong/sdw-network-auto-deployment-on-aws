output "vpc_id" {
  value = aws_vpc.sdw.id
}

output "availability_zone" {
  value = data.aws_availability_zones.available.names
}

output "mpls_subnet" {
  value = aws_subnet.mpls_subnet.id
}

output "internet_subnet" {
  value = aws_subnet.internet_subnet.id
}
