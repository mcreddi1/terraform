 variable "instance_names" {
   type = list(string)
   default = [ "instance1", "instance2" ]
}

# variable "region" {
#   type = list(string)
#   default = [ "us-east-1", "us-east-2" ]
# }

 variable "ami_id" {
   type = string
   default = "ami-09c813fb71547fc4f"
}

variable "regions" {
  type    = list(string)
  default = ["us-east-1", "us-west-2"]  # List of AWS regions where instances will be created
}

variable "instance_type" {
  type    = string
  default = "t2.micro"  # Default instance type, adjust as needed
}

