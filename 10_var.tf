variable "region" {
  type    = string
}

variable "name" {
  type    = string
}

variable "key" {
  type    = string
}

variable "ava_zone" {
  type    = list(any)
}

variable "cidr_main" {
  type    = string
}

variable "pub_sub" {
  type    = list(any)
}

variable "pri_sub" {
}

variable "pri_subdb" {
}

variable "pri_ip" {
}

variable "cidr_route" {
  type    = string
}

variable "cidr_routev6" {
  type    = string
}

variable "ssh" {
  type    = string
}

variable "http" {
  type    = string
}

variable "icmp" {
  type    = string
}

variable "mysql" {
  type    = string
}

variable "mydb" {
}

variable "port_ssh" {
  type    = number
}

variable "port_http" {
  type    = number
}

variable "port_mysql" {
  type    = number
}

variable "port_zero" {
  type    = number
}

variable "port_tra" {
}

variable "minus" {
}

variable "pro_tcp" {
  type    = string
}

variable "pro_icmp" {
  type    = string
}

variable "pro_udp" {
  type    = string
}

variable "pro_http" {
}

variable "nul" {
}

variable "ins_t2" {
}

variable "lb_type" {
}

variable "iam_role" {
}

variable "strategy" {
}

variable "sto_type" {
}
