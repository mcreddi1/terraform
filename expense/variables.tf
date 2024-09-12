variable "instance_names" {
  type = list(string)
  default = [ "mysql", "frontend", "backen" ]
}

variable "common-tags" {
  type = map 
  default = {
    project = "expense"
    environment = "dev"
    terraform = "true"
  }
}

variable "zone_id" {
  default = "Z0286835M1G9H01UW24U"
}

variable "domain_name" {
  default = "devops81s.shop"
}