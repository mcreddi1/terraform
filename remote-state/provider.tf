terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

terraform {
  backend "s3" {
    bucket = "chinnadev"
    key    = "devops-test-backend"
    region = "us-east-1"
    dynamodb_table = "trraform"
  }
}


# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}
