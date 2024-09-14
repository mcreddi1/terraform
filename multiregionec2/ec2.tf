provider "aws" {
  alias = "us-east-1"
  region = "us-east-1"
}

provider "aws" {
  alias = "us-west-2"
  region = "us-west-2"
}

resource "aws_instance" "example" {
  ami = "ami-0583d8c7a9c35822c"
  instance_type = "t2.micro"
  provider = aws.us-east-1
}

resource "aws_instance" "example2" {
  ami = "ami-0bfddf4206f1fa7b9"
  instance_type = "t2.micro"
  provider = aws.us-west-2
}
