# terraform {
#   required_providers {
#     aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }
# }

# # Configure the AWS Provider
# provider "aws" {
#   region = "us-east-1"
# }


provider "aws" {
  region = "us-east-1"  # Default region for AWS provider
  # Add other AWS credentials as needed
}

