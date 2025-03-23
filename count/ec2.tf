resource "aws_instance" "expense"{
    count=length(var.instance_names)
    ami=var.image_id
    instance_type = var.instance_names[count.index] == "db" ? "t3.small":"t3.micro"
    vpc_security_group_ids = ["sg-08665908cff32946d"]

    tags=merge(var.common_tags,
         {
            Name=var.instance_names[count.index]
            Module=var.instance_names[count.index]
         }
    )
}


