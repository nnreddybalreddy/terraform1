resource "aws_security_group" "allow_ssh"{

    name="allow_ssh"
    description = "allow_ssh"

    dynamic "ingress"{
        for_each = var.inbound_rules
        content{
            from_port = ingress.value["port"] 
            to_port =  ingress.value["port"]
            protocol =  ingress.value["protocol"]
            cidr_blocks = ingress.value["allow_cidr"]
        }
    }
    egress{
        to_port = 0
        from_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name="allow_ssh"
        CreatedBy="NNR"
    }
}