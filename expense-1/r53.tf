resource "aws_route53_record" "devops81s" {
  count = length(var.instance_names)
  zone_id = var.zone_id
  type = "A"
  name = var.instance_names[count.index] == "frontend" ? var.domain_name : "${var.instance_names[count.index]}.${var.domain_name}"
  allow_overwrite = true
  ttl = 1
  records = var.instance_names[count.index] == "frontend" ? [aws_instance.terraform[count.index].public_ip] : [aws_instance.terraform[count.index].provate_ip]
  }