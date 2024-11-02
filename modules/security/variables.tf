variable "vpc_id" {
  type = string
}

variable "lan_sg_enable" {
  type = bool
  default = false
  nullable = true
}