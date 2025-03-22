resource "aws_instance" "db"{
    ami=var.image_id
    instance_type = var.instance_type
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags=var.common_tags
}


resource "aws_security_group" "allow_ssh"{
    name=var.sg_name
    description = var.description

    ingress{
        to_port = var.ssh_port
        from_port = var.ssh_port
        protocol = var.protocol
        cidr_blocks = var.allow_cidr
    }

    egress{
        to_port = 0
        from_port = 0
        protocol = "-1"
        cidr_blocks = var.allow_cidr
    }

    tags={
        Name="allow_ssh"
    }
}