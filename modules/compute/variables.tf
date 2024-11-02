variable "instance_type" {
  description = "the ec2 instance type for c8000v"
  type        = string
  default     = "c5.large"
}

variable "ami_id" {
  description = "the ami id for c8000v"
  type = string
}

variable "key_name" {
  description = "the ssh key name for c8000v"
  type = string
}

variable "internet_subnet" {
  description = "the subnet for WAN port"
  type = string
}

variable "mpls_subnet" {
  description = "the subnet for MPLS port"
  type = string
}

variable "lan_subnet" {
  description = "the subnet for LAN port"
  type = string
}

variable "lan_if_enable" {
  description = "Don't create lan port interface for c8000v by default"
  type = bool
  default = false
}

variable "security_group_internet" {
  description = "the security group id for wan port"
  type = string
}

variable "security_group_mpls" {
  description = "the security group id for mpls port"
  type = string
}

variable "security_group_lan" {
  description = "the security group id for lan port"
  type = string
}

variable "user_data_file" {
  description = "a bootstrap file generated in vManage"
  type = string
}

variable "gw_location" {
  description = "the aws region for deployment"
  type = string
}

variable "customer_name" {
  description = "the abbreviation of customer name"
  type = string
}