resource "aws_instance" "expense"{
    for_each = var.instance_names #each.key each.value
    ami=var.image_id
    instance_type = each.value
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]

    tags=merge(
        var.common_tags,
        {
            Name=each.key 
            Module=each.key
        }
    )
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