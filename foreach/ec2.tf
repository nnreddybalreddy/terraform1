resource "aws_instance" "expense"{
    for_each = var.instance_names #each.key , each.value
    ami=var.image_id
    instance_type =each.key == "db" ? "t3.small":"t3.micro"
    vpc_security_group_ids = ["sg-08665908cff32946d"]

    tags=merge(var.common_tags,
         {
            Name=each.key
            Module=each.key
         }
    )
}


