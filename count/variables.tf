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