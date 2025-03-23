resource "aws_instance" "db" {
  count=length(var.instance_names)  
  ami=local.image_id
  instance_type = var.instance_names[count.index]=="db"?"t3.small":"t3.medium"

  vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags=merge(
    var.common_tags,
    {
        Name=var.instance_names[count.index]
        Module=var.instance_names[count.index]
    }
  )
}


resource "aws_security_group" "allow_ssh" {
  name = var.sg_name
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

  tags = {
    Name="allow_ssh"
    CreatedBy="NNR"
  }
}