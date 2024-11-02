module "network_vpc" {
  source            = "./modules/network"
  vpc_mpls_cidr     = var.vpc_mpls_cidr
  vpc_internet_cidr = var.vpc_internet_cidr
  vpc_name_prefix   = var.vpc_name_prefix
  amz_asn           = var.amz_asn
  dx_gw_id          = var.dx_gw_id
}


/* If the LAN subnet and interface is required

resource "aws_subnet" "lan_subnet" {

  vpc_id            = module.network.vpc_id
  availability_zone = module.network.availability_zone[0]
  cidr_block        = var.vpc_lan_cidr

  tags = {
    Name = "lan-subnet"
  }
}

resource "aws_vpc_ipv4_cidr_block_association" "third_cidr" {

  vpc_id     = module.network.vpc_id
  cidr_block = var.vpc_lan_cidr
}

resource "aws_route_table" "lan_rt" {

  vpc_id = module.network.vpc_id

  route {
    cidr_block           = var.vpc_lan_cidr
    network_interface_id = var.lan_interface
  }
}

resource "aws_route_table_association" "lan_rt_association" {

  subnet_id      = aws_subnet.lan_subnet.id
  route_table_id = aws_route_table.lan_rt.id

}

*/


