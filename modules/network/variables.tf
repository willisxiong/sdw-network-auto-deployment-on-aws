variable "vpc_mpls_cidr" {
  type = string
  description = "the secondary cidr block for vpc to host mpls interface"
}

variable "vpc_internet_cidr" {
  type = string
  description = "the cidr block for vpc to host internet eni"
}

variable "vpc_name_prefix" {
  type = string
  description = "avoid vpc name duplication in the same region"
  default = "CMI01"
}

variable "amz_asn" {
  type = string
  description = "the asn number for amazon"
  default = "65412"
}

variable "dx_gw_id" {
  type = string
  description = "the direct connect gateway id to connect with vgw"
}