output "public_ip" {
    value = aws_instance.terraform.public_ip
    sensitive = 
    description = "pub ip of instance created"
}