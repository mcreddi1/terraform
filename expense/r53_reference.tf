provider "aws" {
  region = "us-east-1"  # Replace with your desired AWS region
}

resource "aws_route53_zone" "my_zone" {
  name = "devops81s.shop"
}

# Private records for frontend, backend, and MySQL
resource "aws_route53_record" "frontend_private" {
  zone_id = aws_route53_zone.my_zone.zone_id
  name    = "frontend.devops81s.shop"
  type    = "A"
  ttl     = 1
  records = ["10.0.1.10"]  # Replace with the private IP of your frontend server
}

resource "aws_route53_record" "backend_private" {
  zone_id = aws_route53_zone.example_zone.zone_id
  name    = "backend.devops81s.shop"
  type    = "A"
  ttl     = 300
  records = ["10.0.1.11"]  # Replace with the private IP of your backend server
}

resource "aws_route53_record" "mysql_private" {
  zone_id = aws_route53_zone.example_zone.zone_id
  name    = "mysql.devops81s.shop"
  type    = "A"
  ttl     = 300
  records = ["10.0.1.12"]  # Replace with the private IP of your MySQL server
}

# Public record for frontend server
resource "aws_route53_record" "frontend_public" {
  zone_id = aws_route53_zone.example_zone.zone_id
  name    = "frontend.devops81s.shop"
  type    = "A"
  ttl     = 300
  records = ["<public_ip_of_frontend>"]  # Replace with the public IP of your frontend server
}
