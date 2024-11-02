output "mpls_subnet" {
  value = module.network_vpc.mpls_subnet
}

output "internet_subnet" {
  value = module.network_vpc.internet_subnet
}

/*
output "lan_subnet" {
  value = aws_subnet.lan_subnet.id
}
*/