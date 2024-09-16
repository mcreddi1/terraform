variable "instance_type" {
  type = map
  default = {
    mysql = "t3.micro"
    frontend = "t2.micro"
    backend = "t2.small"
  }
}

variable "zone_id" {
  default = "Z05877213CJSXGZ3AHEQY"
}

variable "domain_name" {
  default = "devops81s.shop"
}