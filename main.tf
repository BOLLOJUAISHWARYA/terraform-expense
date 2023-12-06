resource "aws_instance" "frontend" {
  for_each =  var.components
  ami = var.ami
  instance_type = each.value
  vpc_security_group_ids = var.sg_id
  tags = {
    Name = "${each.value["name"]}-${var.env}"
  }
}

resource "aws_route53_record" "frontend" {
  for_each =  var.components
  zone_id = var.zone_id
  name    = "${each.value}-${var.env}"
  type    = "A"
  ttl     = 30
  records = [aws_instance.instances[each.value["name"]].private_ip]
}

