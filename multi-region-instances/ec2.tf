# resource "aws_instance" "testing" {
#     ami = var.ami_id
#     count = length(var.instance_names)
#     instance_type = "t2.micro"
#     availability_zone = var.instance_names[count.index] == "instance1" ? "us-east-1" : "us-east-2"
#     tags = {
#         Name = var.instance_names[count.index]
#     }
# }


resource "aws_instance" "example" {
  count = length(var.instance_names)  # Number of instances to create in each region

  ami           = var.ami_id  # Replace with your desired AMI ID
  instance_type = var.instance_type
  #availability_zone = var.instance_names[count.index] == "instance1" ? "us-east-1" : "us-west-2"
  availability_zone = "${var.regions[count.index % length(var.regions)]}a"  # Select availability zone in round-robin manner

  tags = {
    Name = var.instance_names[count.index]  # Unique name for each instance
  }
}

resource "aws_subnet" "us-east-1a" {
    count = length(var.instance_names)
  vpc_id = "vpc-000db807882bf4fbd"
  cidr_block = "172.31.0.0/16"
}
