variable "ami_id" {
  type = string
  default = "ami-09c813fb71547fc4f"
  description = "this is the ami id for devops practice"
}

variable "instance_type" {
  type = string
  default = "t3.micro"
}

variable "tags" {
 default = {
  Name = "backend"
  project = "dev"
  component = "expense"
  terraform = "true"
  }
}

variable "sg_name" {
  default = "allow_ssh"
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