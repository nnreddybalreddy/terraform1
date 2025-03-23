resource "aws_security_group" "expense" {
  name="allow_ssh"
  description = "allow_ssh"

  dynamic "ingress"{
    for_each = var.allow_rules
    content{
        from_port = ingress.value["port"]
        to_port = ingress.value["port"]
        protocol="tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
  }

#   ingress{
#     from_port = 22 
#     to_port = 22
#     protocol = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
  egress{
    from_port = 0 
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags={
    Name="allow_ssh"
  }
}