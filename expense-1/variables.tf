variable "instance_names" {
  type = list(string)
  default = [ "mysql", "frontend", "backend" ]
}

variable "sg_name" {
  default = "allow_sshport"
}

variable "from_port" {
  default = 22
}

variable "to_port" {
  default = 22
  type = number
}

variable "protocol" {
  default = "tcp"
  type = string
}

variable "cidr_blocks" {
  default = ["0.0.0.0/0"]
  type = list(string)
}

variable "zone_id" {
  default = "Z04420643AGUWNPNUVE46"
}

variable "domain_name" {
  default = "devops81s.shop"
}