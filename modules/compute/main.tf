resource "aws_instance" "main" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  source_dest_check = false
  user_data     = file(var.user_data_file)

  network_interface {
    network_interface_id = aws_network_interface.primary.id
    device_index         = 0
  }

  tags = {
    Name = "SDW-C-${var.gw_location}-GW-${var.customer_name}"
  }
}

resource "aws_network_interface" "primary" {

  subnet_id         = var.internet_subnet
  source_dest_check = false
  security_groups   = [var.security_group_internet]

  tags = {
    Name = "WAN_Port"
  }
}

resource "aws_network_interface" "second" {
  
  subnet_id         = var.mpls_subnet
  source_dest_check = false
  security_groups   = [var.security_group_mpls]

  tags = {
    Name = "MPLS_Port"
  }
}

resource "aws_network_interface" "third" {
  count = var.lan_if_enable == true ? 1 : 0

  subnet_id         = var.lan_subnet
  source_dest_check = false
  security_groups   = [var.security_group_lan]

  tags = {
    Name = "LAN_Port"
  }
}

resource "aws_network_interface_attachment" "attach_second" {
  
  instance_id          = aws_instance.main.id
  network_interface_id = aws_network_interface.second.id
  device_index         = 1
}

resource "aws_network_interface_attachment" "attach_third" {
  count = var.lan_if_enable == true ? 1 : 0

  instance_id          = aws_instance.main.id
  network_interface_id = aws_network_interface.third[count.index].id
  device_index         = 2
}

resource "aws_eip" "one" {
  domain = "vpc"
  network_interface = aws_network_interface.primary.id
}